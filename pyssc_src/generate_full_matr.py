#cython: language_level=3, boundscheck=False
def generate_full_matr(N, options, mode=1):
    import numpy as np
    from entropic_affinities import driver
    from scipy.sparse import csc_matrix, lil_matrix
    from helper_libraries import printProgressBar
    import sys

    # from helper_libraries import get_dist_ind_knn
    # good_dist, good_ind = get_dist_ind_knn()

    with open(options['prot_dir'] + options['dist_import_filename'], 'rb') as file:
        initial_dist = np.frombuffer(file.read(), dtype=np.float64, count=-1)

    with open(options['prot_dir'] + options['ind_import_filename'], 'rb') as file:
        initial_ind = np.frombuffer(file.read(), dtype=np.uint32, count=-1)

    good_dist = np.reshape(abs(initial_dist), (options["num_elements"], -1))
    good_ind = np.reshape(initial_ind, (options["num_elements"], -1))

    if options["thining_coef"] > 1:
        new_tot = options["num_elements"] // options["thining_coef"]
        thinned_ind = np.zeros([new_tot, new_tot-1], dtype=int)
        thinned_dist = np.zeros([new_tot, new_tot-1])

        jpos = 0
        for j in range(0, options["num_elements"], options["thining_coef"]):
            pos = 0
            for i in range(options["num_elements"] - 1):
                if good_ind[j][i] % options["thining_coef"] == 0:
                    new_ind = int(good_ind[j][i] / options["thining_coef"])
                    thinned_ind[jpos][pos] = new_ind
                    thinned_dist[jpos][pos] = good_dist[j][i]
                    pos += 1
            jpos += 1
        good_dist = thinned_dist
        good_ind = thinned_ind

    # deltaN = good_dist[:, -1] - good_dist[:, 0]
    assert((good_dist[:, -1] - good_dist[:, 0]).min() >= 0)
    good_dist = good_dist[:, 0:options['K']]
    good_ind = good_ind[:, 0:options['K']]
    del initial_dist, initial_ind

    # from scipy.sparse.linalg import expm
    if options['k'] < 0:
        if options['verbose'] > 0:
            print('Using plain affinities')

        N, K = good_ind.shape
        final_matr = lil_matrix((N, N))

        mode = 2
        if mode == 1:
            # for i in range(0, N):
            #     for j in range(0, K):
            #         final_matr[i, good_ind[i, j]] = good_dist[i, j]
            for i in range(N):
                final_matr[i, good_ind[i]] = good_dist[i]
        else:
            if options['verbose'] > 0:
                print('Filling aff matrix...')
                for i in range(N):
                    for j in range(i+1, K):
                        # if(good_dist[i, j] != 0):
                        final_matr[good_ind[i, j], i] = final_matr[i, good_ind[i, j]] = good_dist[i, j]
                    printProgressBar(i, N)
                print('Done.')
                sys.stdout.flush()
            else:
                for i in range(N):
                    for j in range(i+1, K):
                        # if(good_dist[i, j] != 0):
                        final_matr[good_ind[i, j], i] = final_matr[i, good_ind[i, j]] = good_dist[i, j]
        final_matr = final_matr.tocsc()
        # if options["thining_coef"] > 1:
        #     final_matr[0:N:options["thining_coef"], 0:N:options["thining_coef"]]
        # with open("./full_matr.csv", 'w') as full_matr:
        #     matlab_csv = csv.writer(full_matr, dialect='excel')
        #     for elem in final_matr:
        #         matlab_csv.writerow(elem)


        divisor = 2 * options['sigma'] * options['sigma']
        final_matr.data = np.exp(- final_matr.power(2).data / divisor)
        if options['verbose'] > 0:
            print('Done.')
        # No need to replace 1s with 0s, since all operations were performed
        # on real values, 0s were ommited by design of csc sparse matrix
        # final_matr[np.where(final_matr == 1)] = 0

    else:
        if options['verbose'] > 0:
            print('Using entropic affinities:')
        final_matr = driver(good_dist, options['k'], options['K'], good_ind)
        if options['verbose'] > 0:
            print('Done.')

    final_matr.setdiag(1)
    assert(final_matr[0, 0] == final_matr[1, 1] == 1 and sum(final_matr.diagonal()) == N)
    # np.fill_diagonal(final_matr, 1)
    # for i in range(N):
    #     final_matr[i, i] = 1

    # from matplotlib import pyplot as plt
    # heatmap = plt.pcolor(final_check, cmap=plt.cm.Blues)
    # plt.show()

    return final_matr
