#!/usr/bin/env python
#cython: language_level=3, boundscheck=False
def main():
    # OptM can be {'L1Perfect','L1Noisy','Lasso','L1ED'}
    # import sys
    import argparse
    import time
    from SSC_Python import SSC_Python
    from generate_toy_problem import Generate_toy_problem
    import ctypes
    import faulthandler
    import sys
    faulthandler.register(10)

    # check_assignments()
    try:
        # import importlib.util
        try:
            import argparse
        except ImportError:
            print('\nThere is no "argparse" installed')
    except ImportError:
        print('\nThere is no "importlib.util" installed')

    # if importlib.util.find_spec('numpy') is None:
    #     print("NUMPY was not found. \nThis porgramm heavily uses numpy module - please install it.\n")

    # if importlib.util.find_spec('cvxpy') is None:
    # print("WARNING: CVXPY was not found, but you may try to use MATLAB if you have it installed ")
    avail_solvers = ['CVXPY was not found ! No solvers will be showed.']
    # else:
    #     from cvxpy import installed_solvers
    #     avail_solvers = installed_solvers()

    parser = argparse.ArgumentParser(description="Implements local clustering algorithm. "
                                                 "Uses CVX to separate data groups even more than spectral clustering."
                                                 " Output is cluster labels for each point calculated with KNN")
    parser.add_argument("elnum", help="number of elements in each point inside the input file", type=int)
    parser.add_argument("clusters", help="how many clusters you expect to get", type=int)
    parser.add_argument("-K", help="number of edges to keep. Use 0 to keep all the coefficients", type=int, default=0)
    parser.add_argument("-i", "--infile", help="file that contains data for processing")
    parser.add_argument("-o", "--outfile", help="output filename. Default: clusters.dat", default='clusters.dat')
    parser.add_argument("-b", "--assignment", help="takes assignments file for bestmap function. If name is 'generate'"
                                                   " - program will generate equal number of elements for"
                                                   " each cluster", default='generate')
    parser.add_argument("-d", "--dir", help="subdirectory with protein name to process in 'proteins' directory")
    parser.add_argument("-v", "--verbose", help="increase output verbosity. Currently not implemented",
                        type=int, choices=[0, 1, 2], default=0)
    parser.add_argument("-c", "--color", action="store_true", help="use color output")
    parser.add_argument("-p", "--projection", help="selects projection type",
                        choices=['PCA', 'NormalProj', 'BernoulliProj'])
    parser.add_argument("-g", "--generate_toy", action="store_true", help="generate file for 'toy problem'")
    parser.add_argument("-m", "--matlab", action="store_true", help="use MATLAB to solve problem instead of CVXPY")
    parser.add_argument("-s", "--solver", help='specifies solver name to use for CVX computation.',
                        choices=avail_solvers)
    parser.add_argument("-j", "--method", help='specifies method to use in SpectralClustering',
                        choices=['L1Noisy', 'L1ED', 'Lasso', 'L1Perfect'])
    parser.add_argument("-l", "--plambda", help="regularization parameter in 'Lasso' or the noise "
                                                "level for 'L1Noise'", type=float)
    parser.add_argument("-a", "--cst", help="additional affine constraint sum(c) == 1", action="store_true")
    parser.add_argument("-n", "--noskip", help="prevents program from reusing results of previous computations stored"
                                               " in reuse_db(reduces speed 20+ times)", action="store_true")
    parser.add_argument("-r", "--projdim",
                        help="projection dimension e.g. r = d*n, enter r = 0 to not project", type=int)
    parser.add_argument("-k", "--perplexity", help="perplexity value for entropic affinities", type=int)
    parser.add_argument("-f", "--force", help="force some specific behaviour", type=int)
    parser.add_argument("-t", "--timestamp",
                        help="Unique value to be used instead of timestamp to give an output file unique name")
    parser.add_argument("-S", "--sigma", help="Manual sigma value for affinities matrix", type=float)
    parser.add_argument("-A", "--alg_choice", help="1 - Spectral, 2 - Subspace, 3 - Mixed(dot), 4 - Mixed(ew), 5 - Mixed(special)",
                        type=int, choices=[0, 1, 2, 3, 4, 5], default=4)
    parser.add_argument("-y", "--thinning_coef", help="thinning coefficient, to make matrix sparser.", type=int)

    args = parser.parse_args()

    # if not args.matlab and importlib.util.find_spec('cvxpy') is None:
    #     sys.exit('CVXPY was not found and you did not specify to use MATLAB.')

    verbose = 0
    if args.verbose:
        verbose = int(args.verbose)
        if verbose > 1:
            print('Verbose mode: ', str(verbose))

    color_flag = False
    # if args.color == True:
    #     print('Color - true')
    #     if importlib.util.find_spec('colorama') is not None:
    #         from colorama import init
    #         init()
    #         from colorama import Fore
    #         color_flag = True
    #     else:
    #         print('WARNING: Colorama module was not found. Please install it if you want to see colorized output')

    if color_flag:
        from colorama import init, Fore
        init()
        info = Fore.LIGHTBLUE_EX + 'INFO: ' + Fore.RESET
        fail = Fore.RED + 'ERROR: ' + Fore.RESET
        times = Fore.LIGHTYELLOW_EX + 'TIME: ' + Fore.RESET
        warning = Fore.LIGHTWHITE_EX + 'WARNING: ' + Fore.RESET
        if verbose > 1:
            print(info, 'Color enabled')
    else:
        info = "INFO: "
        fail = "ERROR: "
        times = "TIME: "
        warning = 'WARNING: '

    input_filename = 'trajectory.dat'
    if args.infile:
        input_filename = args.infile
        if verbose > 1:
            print('input_filename: ', input_filename)

    num_elements = int(args.elnum)
    if verbose > 1:
        print('num_elements: ', str(num_elements))

    K = int(args.K)
    if verbose > 1:
        print('K: ', str(K))

    clusters_to_compute = int(args.clusters)
    if verbose > 1:
        print('clusters_to_compute: ', str(clusters_to_compute))

    projection = 'NormalProj'
    if args.projection:
        projection = args.projection
        if verbose > 1:
            print('projection: ', projection)

    output_filename = './clusters.dat'
    if args.outfile:
        output_filename = args.outfile
        if verbose > 1:
            print('output filename: ', output_filename)

    if args.dir:
        prot = args.dir
        if verbose > 1:
            print('protein(working) directory: ', prot)
    else:
        print('Protein directory not specified')
        exit(-4)

    assig_filename = 'generate'
    if args.assignment:
        assig_filename = args.assignment
        if verbose > 1 and assig_filename != 'generate':
            print('output filename: ', assig_filename)

    if assig_filename == 'generate':
        if verbose > 1:
            print(info, 'Assignment file has value "generate". This will work only for equal size clusters. '
                        'If you have specific assignment file please pass it as a parameter with -b option')

    solver = 'ECOS'
    if args.solver:
        solver = args.solver
        if verbose > 1:
            print('solver: ', solver)

    method = 'Lasso'
    if args.method:
        method = args.method
        if verbose > 1:
            print('method: ', method)

    plambda = 0.001
    if args.plambda:
        plambda = args.plambda
        if verbose > 1:
            print('Lambda: ', plambda)

    r = 0
    if args.projdim:
        r = int(args.projdim)
        if verbose > 1:
            print('r: ', str(r))

    cst = False
    if args.cst:
        cst = args.cst
        if verbose > 1:
            print('Cst: ', cst)
        print(warning, "Python's cvx does not produce any correct results with Cst == True")
        K += 1
        if verbose > 0:
            print(info, 'K was incremented because of Cst == True')

    if args.generate_toy:
        Generate_toy_problem(color_flag)
        input_filename = 'toy_problem.dat'
        if verbose > 1:
            print('Toy problem generated. input_filename: ', input_filename)

    matlab_solver = False
    if args.matlab:
        matlab_solver = int(args.matlab)
        if verbose > 1:
            print('matlab_solver: ', matlab_solver)

    noskip = False
    if args.noskip:
        noskip = args.noskip
        if verbose > 1:
            print('Noskip option is : ', noskip)
            if noskip:
                print('This will significantly increase computation time, but will guarantee, that solution is exact')
    else:
        if verbose > 1:
            print('Noskip option is not set (', noskip, ' by default). This should speedup program if precomputed '
                                                        'results are found in reuse_db directory')

    k = -1
    if args.perplexity:
        k = int(args.perplexity)
        if verbose > 1:
            print('r: ', str(k))

    force = 0
    if args.force:
        force = int(args.force)
        if verbose > 1:
            print('force : ', str(force))

    sigma = 2.0
    if args.sigma:
        sigma = args.sigma
        if verbose > 1:
            print('Sigma: ', sigma)

    if args.timestamp:
        timestamp = args.timestamp
        if verbose > 1:
            print('timestamp: ', timestamp)
    else:
        timestamp = str(time.time())

    if args.alg_choice:
        alg_choice = args.alg_choice
        if verbose > 1:
            print('alg_choice: ', alg_choice)
            if alg_choice == 1:
                print('Spectral clustering')
            elif alg_choice == 2:
                print('Subspace clustering')
    else:
        timestamp = str(time.time())

    thinning_coef = 1
    if args.thinning_coef:
        thinning_coef = args.thinning_coef
        if verbose > 1:
            print('Thinning coefficient: ', thinning_coef)

    import os
    timestamp = 'PID_' + str(os.getpid()) + '_K_' + str(K) + '_k_' + str(k) + '_' + timestamp

    SSC_Python(num_elements, clusters_to_compute, input_filename, K, color_flag, output_filename, projection, solver,
               method, plambda, cst, r, verbose, matlab_solver, assig_filename, noskip, k, sigma, timestamp, alg_choice,
               force, prot, thinning_coef)

if __name__ == "__main__":
    # import sys
    # print(str(sys.argv) )
    main()

