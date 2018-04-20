#  cst: 1 if using the affine constraint sum(c)=1, else 0
#  lambda: regularizartion parameter of LASSO, typically between 0.001 and
#  0.1 or the noise level for 'L1Noise'
#cython: language_level=3, boundscheck=False
import numpy as np
from cvxpy import Variable, Problem, Minimize, norm, installed_solvers
from decimal import getcontext
from helper_libraries import get_intervals_for_parallel, printProgressBar
from time import time
from datetime import datetime, timedelta

Xp_glob = 0  # created as shared readonly var for multiproc.


def SparseCoefRecovery(Xp, options):

    getcontext().prec = 15
    np.seterr(all='raise')

    global Xp_glob
    Xp_glob = Xp
    # print('Installed solvers : ', installed_solvers())
    # If solver does not exists, here should be error handling
    if options['verbose'] > 0:
        print('Starting SparseCoefRecovery.')
        print(options['info'], 'Selected solver: ', options['solver'])

    D, N = Xp_glob.shape

     # np.savetxt("Xp_Py.csv", Xp, delimiter=",")

    parallel = True
    if parallel:
        from multiprocessing import Process, Pipe
        num_cpu, intervals = get_intervals_for_parallel(N)

        proc_arr = num_cpu * [None]
        parent_conn = num_cpu * [None]
        for i in range(num_cpu):
            parent_conn[i], child_conn = Pipe()
            proc_arr[i] = Process(target=better_par_func,
                                  args=(child_conn, intervals[i], N, options['cst'], options['optm'],
                                        options['plambda'], options['solver'], D, options,))
            proc_arr[i].start()

        result = parent_conn[0].recv()
        proc_arr[0].join()
        for i in range(1, num_cpu):
            received = parent_conn[i].recv()
            result = np.hstack((result, received))
            proc_arr[i].join()
    else:
        result = CVX_function(0, N, options['cst'], options['optm'], options['plambda'], options['solver'], D)
        for i in range(1, N):
            result = np.hstack((result, CVX_function(i, N, options['cst'], options['optm'],
                                                     options['plambda'], options['solver'], D)))
            if options['verbose'] > 0:
                printProgressBar(i, N)
    del Xp_glob
    result = np.array(result)
    Cmat_new = np.zeros((N, N))
    Cmat_new[1:, 0] = result[0:N - 1, 0]
    for i in range(1, N):
        Cmat_new[0:i - 1, i] = result[0:i - 1, i]
        Cmat_new[i + 1:N, i] = result[i:N, i]

    return Cmat_new


def CVX_function(i, N, cst, Opt, plambda, u_solver, D):
    y = Xp_glob[:, i]
    if ((i > 0) and (i < N - 1)):  # most popular choice
        main_y = np.concatenate((Xp_glob[:, 0:i - 1], Xp_glob[:, i:N]), axis=1)  # TODO check if main_y is matr and whether main_y * c is a pair-wise product or dot product
    elif i == 0:
        main_y = Xp_glob[:, i + 1:N]
    else:
        main_y = Xp_glob[:, 0:N - 1]

    if Opt != 'L1ED':
        c = Variable(N - 1)
    else:
        c = Variable(N - 1 + D)

    if cst == 1:
        if Opt == 'Lasso':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1) + plambda * norm(main_y * c - y))
            Constraints = [sum(c) == 1]
        elif Opt == 'L1Perfect':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1))
            Constraints = [main_y * c == y, sum(c) == 1]
        elif Opt == 'L1Noisy':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1))
            Constraints = [norm(main_y * c - y) <= plambda, sum(c) == 1]
        elif Opt == 'L1ED':
            # c = Variable(N - 1 + D)
            Objective = Minimize(norm(c, 1))
            Constraints = [np.c_[main_y, np.identity(D)]*c == y, sum(c[1:N - 1]) == 1]
    else:
        if Opt == 'Lasso':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1) + plambda * norm(main_y * c - y))
            Constraints = []
        elif Opt == 'L1Perfect':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1))
            Constraints = [main_y * c == y]
        elif Opt == 'L1Noisy':
            # c = Variable(N - 1)
            Objective = Minimize(norm(c, 1))
            Constraints = [norm(main_y * c - y) <= plambda]
        elif Opt == 'L1ED':
            # c = Variable(N - 1 + D)
            Objective = Minimize(norm(c, 1))
            Constraints = [np.c_[main_y, np.identity(D)] * c == y]

    prob = Problem(Objective, Constraints)
    result = prob.solve(solver=u_solver)  # , MSK_DPAR_BASIS_TOL_X="1e-9")

    if c.value is None:
        print(i, N, cst, Opt, plambda, u_solver, D)
    return c.primal_value
    # return np.array(c.primal_value)


def better_par_func(child_conn, interval, N, cst, Opt, plambda, u_solver, D, options):
    if interval[0] == 0:  # One thread will compute statistics
        import sys
        start = time()
        result = CVX_function(interval[0], N, cst, Opt, plambda, u_solver, D)
        one_iter = time() - start
        total_duration = one_iter * (interval[0] + interval[1] - 1)
        print('One iteration duration: ', total_duration/1000, 's')
        print('Expected total time : ', timedelta(milliseconds=total_duration))
        print('Expected finish time: ', datetime.fromtimestamp(time() + total_duration))
        for i in range(interval[0] + 1, interval[0] + interval[1]):
            if options['verbose'] > 0:
                printProgressBar(i, interval[0] + interval[1])
            sys.stdout.flush()
            result = np.hstack((result, CVX_function(i, N, cst, Opt, plambda, u_solver, D)))
    else:
        result = CVX_function(interval[0], N, cst, Opt, plambda, u_solver, D)
        for i in range(interval[0]+1, interval[0] + interval[1]):
            result = np.hstack((result, CVX_function(i, N, cst, Opt, plambda, u_solver, D)))

    child_conn.send(result)
    child_conn.close()
