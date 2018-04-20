#cython: language_level=3, boundscheck=False
import numpy as np
from numpy.linalg import norm
from sklearn.cluster import KMeans, MiniBatchKMeans
from scipy.cluster.vq import kmeans2  # Twice faster than KMeans, but does not support multiple runs and parallel
from scipy import sparse
from scipy.sparse.linalg import svds
from scipy import linalg
from sparsesvd import sparsesvd
from multiprocessing import Pool, cpu_count
# from scipy.sparse import identity
from get_NMI import get_NMI
from bestMap import bestMap
from scipy.sparse import csc_matrix, lil_matrix
import scipy.special as sc_special
from time import time
from helper_libraries import log_print


def SpectralClustering(ck_sym, sc, options, rep_factor=100 ):
    # np.set_printoptions(threshold=np.nan)
    np.seterr(all='raise')
    sc_special.seterr(all='raise')
    check_point = time()

    nn = ck_sym.shape[0]

    dn = lil_matrix((nn, nn))
    sum_ck = np.array(np.sqrt(np.sum(ck_sym, axis=0))[0])
    # check for equality of results of different data types(matrix and array)
    # a = np.array(ck_sym.todense())  # make sure that we have dense np.array
    # b = np.sqrt(np.sum(a, axis=0))
    # print(np.allclose(b, sum_ck, rtol=1e-16, atol=1e-15))
    try:
        dn.setdiag(1.0 / np.array(sum_ck)[0])
    except (ZeroDivisionError, FloatingPointError):
        print('Avoiding division by zero in dn.diag by adding eps(long double)')
        sum_ck = np.array(sum_ck, dtype=np.longdouble)
        eps = np.finfo(np.longdouble).eps
        dn.setdiag(1.0 / (np.array(sum_ck)[0] + eps))
    dn = dn.tocsc()

    del sum_ck
    if options['verbose'] > 1:
        print('Starting eigen decomposition')
    if options['spectral_eig_algo'] == 1:
        lap_n = dn * ck_sym * dn  # moved to matrix notation
        ut, s, vn = svds(lap_n, options['n_clusters'], which='LM', ncv=min(5*options['n_clusters'] + 1, nn//2 + 1))
        for i in range(options['n_clusters']):
            if(s.imag.any() != 0):
                print(i)
        kern = np.fliplr(vn).T
    elif options['spectral_eig_algo'] == 2:  # LOOKS LIKE THIS PACKAGE IS OUTDATED AND PRODUCES WRONG RESULTS.
                            # Latest tested(successfully) python version for it is 3.2
        sp_d_n = dn
        # sp_d_n = sparse.csc_matrix(dn)
        lap_n = sp_d_n.dot(sparse.csc_matrix(ck_sym)).dot(sp_d_n)
        ut, s, vn = sparsesvd(lap_n, options['n_clusters'])
        kern = vn.T
        if len(s) < options['n_clusters']:
            sp_d_n = sparse.csc_matrix(dn)
            lap_n = sp_d_n.dot(sparse.csc_matrix(ck_sym)).dot(sp_d_n)
            one, two, vn = svds(lap_n, options['n_clusters'], which='LM', ncv=100)
            kern = vn[::-1].T
    elif options['spectral_eig_algo'] == 3:  # very slow, but always correct
        # LapN = np.identity(nn) - np.dot(np.dot(DN, CKSym), DN)
        dn = dn.todense()
        lap_n = np.dot(np.dot(dn, ck_sym), dn)
        ut, s, vn = linalg.svd(lap_n, full_matrices=True, lapack_driver='gesvd')
        kern = vn[0:options['n_clusters']].T
    else:
        # **** BEGIN NON-SPARSE SVD *****
        # LapN = np.identity(nn) - np.dot(np.dot(DN, CKSym), DN)
        dn = dn.todense()
        lap_n = np.dot(np.dot(dn, ck_sym), dn)
        one, two, vn = np.linalg.svd(lap_n, full_matrices=True)  # returns U, s, vN
        kern = vn[0:options['n_clusters']].T
        # **** END NON-SPARSE SVD *****
    if options['verbose'] > 1:
        print('Done with eigen decomposition')
    del dn, ck_sym, lap_n, vn

    kern = np.array(kern, dtype=np.longdouble)
    norm_n = norm(kern, axis=1)  # FloatingPointError: underflow encountered in multiply in RMS data
    # https: // docs.scipy.org / doc / numpy / reference / generated / numpy.apply_along_axis.html
    try:
        kern_s = np.apply_along_axis(lambda a, b: a / b, 0, kern, norm_n)
    except (ZeroDivisionError, FloatingPointError):
        print('Avoiding division by zero in kern_norm by adding eps(long double)')
        eps = np.finfo(np.longdouble).eps
        kern_s = np.apply_along_axis(lambda a, b: a / b, 0, kern, norm_n + eps)

    # kerNS = np.array(kerNS, dtype=np.float64)

    # if sum(sum(abs(kern_s.imag))) > 0:
    #     print('Imaginary numbers in Laplasians,')
    #     kern_s = kern_s.real
    #     exit(-5)
    check_point = log_print(check_point, options['verbose'], '%s Eigen decomposition time : ' % options['times'])
    total_batch_size = 200*cpu_count()
    if options['verbose'] > 1:
        print('Starting K-means algorithm')
    if options['kmeans_minibatch']:
        groups = MiniBatchKMeans(n_clusters=options['n_clusters'], tol=1e-7, max_no_improvement=20, batch_size=total_batch_size,
                                 n_jobs=cpu_count()).fit_predict(kern_s)
        bestGroups = groups
        nmi_batch = []
        iter_counter = total_batch_size
    else:
        bestNMI, bestGroups, nmi_batch, iter_counter = simple_kmeans_par(kern_s, sc, options)
    if options['verbose'] > 1:
        print('Done with K-means algorithm')
    # import seaborn as sns
    # sns.set_style('whitegrid')
    # sns.kdeplot(NMI_batch, bw=0.000000001)
    # sns.kdeplot(NMI_batch)
    # max1 = NMI_batch.max()
    # min1 = NMI_batch.min()
    bestGroups += 1  # add 1 to all elements since bestMap and further processing requires 1 as minimum index
    check_point = log_print(check_point, options['verbose'], '%s Kmeans(with NMI) time : ' % options['times'])
    return bestGroups, nmi_batch, iter_counter


def simple_kmeans_par(kern_s, sc, options, rep_factor=2):
    # error_flag = False
    # iter_counter = 0
    # nmi_batch = np.zeros(rep_factor)
    # poolway = False
    # if poolway:
    #     pool = Pool(processes=min(cpu_count(), n))
    #     for j in range(10):
    #         nmi_batch_proc = [pool.apply_async(run_kmeans, (n, options['kmeans_max_iter'], kern_s, verbose, sc)) for i in range(rep_factor)]
    #         result = [res.get() for res in nmi_batch_proc]
    #         nmi_batch = [x[0] for x in result]
    #         best_ind = nmi_batch.index(max(nmi_batch))
    #         bestNMI, bestGroups = result[best_ind]
    #
    #         try:
    #             bestGroups
    #             some_object_iterator = iter(bestGroups)
    #             j += 1
    #             print('Breaking after ', j, ' attempt')
    #             iter_counter = j * rep_factor
    #             break
    #         except (NameError, TypeError):
    #             print("From all runs we did not get any NMI. Giving second chance")
    #             error_flag = True
    #     if error_flag:
    #         print('Critical error: All attempts to get NMI failed. There is no reason to work further')
    #         exit(-1)
    # else:
    from multiprocessing import Process, Pipe
    from helper_libraries import get_intervals_for_parallel

    num_cpu, iter_per_core = get_intervals_for_parallel(options['iter_counter'])

    proc_arr = num_cpu * [None]
    parent_conn = num_cpu * [None]
    result_nmi = num_cpu * [None]
    # result_groups = num_cpu * [None]

    for i in range(num_cpu):
        parent_conn[i], child_conn = Pipe()
        proc_arr[i] = Process(target=run_kmeans,
                              args=(options['n_clusters'], kern_s, options['verbose'], sc, iter_per_core[i][1], child_conn))
        proc_arr[i].start()

    nmi, groups, iter_counter, nmi_batch = parent_conn[0].recv()
    result_nmi[0], result_groups = nmi, groups
    proc_arr[0].join()
    for i in range(1, num_cpu):
        nmi, groups, iterations, nmi_batch_res = parent_conn[i].recv()
        result_nmi[i] = nmi
        result_groups = np.vstack((result_groups, groups))
        nmi_batch.extend(nmi_batch_res)
        proc_arr[i].join()
        iter_counter += iterations

    good_ind = np.argmax(result_nmi)
    # good_ind = min(range(num_cpu), key=result_nmi.__getitem__)
    bestNMI = result_nmi[good_ind]
    bestGroups = result_groups[good_ind]

    a = 8

    return bestNMI, bestGroups, np.array(nmi_batch), iter_counter


def run_kmeans(n_clusters, kerns, verbose, sc, iter_per_core, child_conn=None):
    different_clusters = 0

    # kmeans_method = 'scipy'  # may give better(0.44) or worse(0.35) NMI
    # kmeans_method = 'sklearn' # 'sklearn' gives stable good(0.41) NMI
    nmi = -1
    newGrps = None
    iterations = 0
    different_clusters = 0
    nmi_batch = list()
    for i in range(iter_per_core):
        for attempt_count in range(10):
            iterations += 1
            # scipy:
            # none, groups = kmeans2(data=kerns, k=n, missing='warn')
            # sklearn:
            groups = KMeans(n_clusters=n_clusters, n_init=50, max_iter=300, tol=1e-7,
                            init='k-means++', copy_x=False).fit_predict(kerns)

            if different_clusters < len(set(groups)):
                different_clusters = len(set(groups))
            if different_clusters == n_clusters:
                break

        if different_clusters < n_clusters:
            if verbose > 1:
                print('Fail: ', "Kmeans did not find N clusters after several attempts ! Found: ", different_clusters)
        else:
            newGrps = bestMap(sc, groups)
            new_nmi = get_NMI(sc, newGrps)
            nmi_batch.append(new_nmi)
            if new_nmi > nmi:
                Grps = newGrps
                nmi = get_NMI(sc, newGrps)

    if child_conn is not None:
        child_conn.send([nmi, Grps, iterations, nmi_batch])
        child_conn.close()
    else:
        return nmi, newGrps, iterations, nmi_batch
