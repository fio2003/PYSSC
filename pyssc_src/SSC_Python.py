#!/usr/bin/env python
#cython: language_level=3, boundscheck=False
# GOOD PARAMETERS 1000 10 -i sincos.dat -cv2 -K650 --method Lasso -b generate -k 10


def SSC_Python(num_elements, n_clusters, in_file, K, color_flag, out_file, projection, solver,
               optm, plambda, cst, projdim, verbose, matlab_solver, assig_filename, noskip, k, sigma, timestamp,
               alg_choice, force, prot, thinning_coef):
    # INIT SECTION
    import numpy as np
    import time
    # from DataProjection import DataProjection  # not used at this point
    # from OutlierDetection import OutlierDetection  # not used at this point
    from BuildAdjacency import BuildAdjacency
    from SpectralClustering import SpectralClustering
    from get_NMI import get_NMI
    from bestMap import bestMap
    from helper_libraries import heatmap_plot, check_affinity_reuse, get_assignment_matr, \
        get_data_file, store_result_in_db, set_color, log_print, simple_heatmap, \
        check_affinity_reuse_par, opt_coefficients, get_options, special_normalization, set_aff_reuse_name
    from multiprocessing import Process, Pipe
    from scipy.sparse import csc_matrix, lil_matrix
    # import portalocker

    options = get_options(num_elements, n_clusters, in_file, K, color_flag, out_file, projection, solver,
                          optm, plambda, cst, projdim, verbose, matlab_solver, assig_filename, noskip, k,
                          sigma, timestamp, 'results.db', alg_choice, force, prot, thinning_coef)
    check_point = start_time = old_check_point = time.time()

    # END INIT SECTION

    if verbose > 0:
        # timestamp = str(int(start_time))
        print(options['info'], 'Timestamp for this run: ', timestamp)

    Xp = get_data_file(options)
    set_aff_reuse_name(Xp.shape[0], options)

    check_point = log_print(check_point, verbose, '%s File search/read : ' % options['times'])

    # Temprorary switched off projections
    # Xp = DataProjection(Xp, projdim, 'NormalProj', color_flag)
    # check_point = log_print(check_point, verbose, '%s DataProjection time : ' % options['times'])
    if options['alg_choice'] != 2:
        if options['parallel_affinity']:
            parent_conn, child_conn = Pipe()
            affinity_matrix_proc = Process(target=check_affinity_reuse_par, args=(child_conn, Xp, options))
            affinity_matrix_proc.start()
        else:
            aff_mat = check_affinity_reuse(Xp, options)
        check_point = log_print(check_point, verbose, '%s Affinity file read/generation time : ' % options['times'])

    sc = get_assignment_matr(Xp, assig_filename, n_clusters, options['prot_dir'])
    if options['alg_choice'] > 1:
        if options['verbose'] > 0:
            print('Reading opt coef matrix:')
        solution_of_opt_problem = opt_coefficients(Xp, options)
        check_point = log_print(check_point, verbose, '%s Reuse XP file read time : ' % options['times'])
        # solution_of_opt_problem = SparseCoefRecovery(Xp.T, cst, optm, plambda, solver, color_flag)
        # ************* SKIP BLOCK ********************
        # check_point = log_print(check_point, verbose, '%s Assignment file read/generation time : ' % times)
        # if False:
        #     solution_of_opt_problem, sc, OutlierIndx, Fail = OutlierDetection(solution_of_opt_problem, sc)
        #     if Fail:
        #         print('Error in Ourlier Detection')
        #         exit(-1)
        # else:
        #     if verbose > 0: print(info, "Outlier detection was intentionally disabled")
        # ********** END SKIP BLOCK ********************
        del solver, noskip, Xp
        if options['verbose'] > 0:
            print('Building adj matrix:')
        normalized_solution_of_min_prob = BuildAdjacency(solution_of_opt_problem, K, options)
        check_point = log_print(check_point, verbose, '%s BuildAdjacency(Python) time : ' % options['times'])

    if options['want_normalize_like_in_matlab']:
        normalized_solution_of_min_prob = special_normalization(normalized_solution_of_min_prob)

    if options['alg_choice'] != 2 and options['parallel_affinity']:
        if not parent_conn.closed:  # may be already closed if Matlab solver was called
            aff_mat = parent_conn.recv()
        affinity_matrix_proc.join()

    # sparse * fails on input files > 7Gb(maybe even smaller).
    if options['alg_choice'] == 1:  # spectral
        fin_aff_mat = aff_mat
    elif options['alg_choice'] == 2:  # subspace
        fin_aff_mat = normalized_solution_of_min_prob
    elif options['alg_choice'] == 3: # mixed_dot
        if options['mul_method'] == 'sparse':
            normalized_solution_of_min_prob /= normalized_solution_of_min_prob.max(0).toarray()[0]
            normalized_solution_of_min_prob = csc_matrix(normalized_solution_of_min_prob)
            fin_aff_mat = normalized_solution_of_min_prob * aff_mat
        elif options['mul_method'] == 'dense':
            normalized_solution_of_min_prob /= normalized_solution_of_min_prob.max(0).toarray()[0]
            normalized_solution_of_min_prob = csc_matrix(normalized_solution_of_min_prob)
            fin_aff_mat = np.array(normalized_solution_of_min_prob.todense()).dot(np.array(aff_mat.todense()))
            fin_aff_mat = csc_matrix(fin_aff_mat)
    elif options['alg_choice'] == 4:  # mixed element wise
        if options['mul_method'] == 'sparse':  #
            normalized_solution_of_min_prob /= normalized_solution_of_min_prob.max(0).toarray()[0]
            normalized_solution_of_min_prob = csc_matrix(normalized_solution_of_min_prob)
            fin_aff_mat = normalized_solution_of_min_prob.multiply(aff_mat)
            assert (fin_aff_mat[0, 0] == normalized_solution_of_min_prob[0, 0] * aff_mat[0, 0])
            fin_aff_mat = csc_matrix(fin_aff_mat)
            fin_aff_mat = fin_aff_mat.T + fin_aff_mat # if any row is zero, then normalization(next step) will give div zero
        elif options['mul_method'] == 'dense': # elem dense
            normalized_solution_of_min_prob /= normalized_solution_of_min_prob.max(0).toarray()[0]
            normalized_solution_of_min_prob = csc_matrix(normalized_solution_of_min_prob)
            fin_aff_mat = np.array(normalized_solution_of_min_prob.todense()) * np.array(aff_mat.todense())
            assert (fin_aff_mat[0, 0] == normalized_solution_of_min_prob[0, 0] * aff_mat[0, 0])
            fin_aff_mat = csc_matrix(fin_aff_mat)
            fin_aff_mat = fin_aff_mat.T + fin_aff_mat # if any row is zero, then normalization(next step) will give div zero
    elif alg_choice == 5:  # very spectial method
        fin_aff_mat = (normalized_solution_of_min_prob * aff_mat).multiply(aff_mat)
        fin_aff_mat = fin_aff_mat.T + fin_aff_mat

    else:
        print('Algorithm choice was not set.')
        exit(-1)

    if options['alg_choice'] != 2:
        del aff_mat

    # simple_heatmap(fin_aff_mat, 'final_affinity_matr_%d' % check_point)
    # heatmap_proc = Process(target=simple_heatmap,
    # args=(fin_aff_mat[::10, ::10].copy(), 'final_affinity_matr_%d' % check_point,))
    # heatmap_proc.start()

    rep_factor = 100  # how many time to perform kmeans clustering for NMI batch
    check_point = log_print(check_point, verbose, '%s Starting spectral function : ' % options['times'])
    Grps, nmi_batch, iter_counter = SpectralClustering(fin_aff_mat, sc, options)
    check_point = log_print(check_point, verbose, '%s Spectral time : ' % options['times'])
    del fin_aff_mat
    newGrps = bestMap(sc, Grps)

    check_point = log_print(check_point, verbose, '%s BestMap(Python) time : ' % options['times'])

    NMI = get_NMI(sc, newGrps)
    print('Best NMI: ', round(NMI, 4))
    check_point = log_print(check_point, verbose, '%s NMI time : ' % options['times'])

    store_result_in_db(nmi_batch, NMI, iter_counter, newGrps, options)

    # heatmap_proc.join()

    if verbose > 0:
        print('Record saved in ' + options['db_name'])
        print('Saving file ', out_file, ' (Python)...')
        print(options['times'], 'TOTAL time: ', check_point - start_time)
        print('End of SSC_python')
