import numpy as np
from scipy.sparse import csc_matrix
from helper_libraries import printProgressBar

def BuildAdjacency(CMat, K, options):

    CAbs = np.abs(CMat)
    del CMat
    CAbs /= np.amax(CAbs, axis=0)
    # https://github.com/numpy/numpy/issues/5241
    CSym = CAbs + CAbs.T
    del CAbs

    if K == 0:
        return csc_matrix(CSym)

    N = CSym.shape[0]

    CK = np.zeros((N, N))
    local_max = np.amax(CSym, axis=0)
    best_ind = np.argsort(CSym, axis=0)[::-1][0:K].T
    if options['verbose'] > 0:
        import sys
        for i in range(N):
            b = best_ind[i]
            CK[b, i] = CSym[b, i] / local_max[i]
            printProgressBar(i, N)
            sys.stdout.flush()
    else:
        for i in range(N):
            b = best_ind[i]
            CK[b, i] = CSym[b, i] / local_max[i]
    del CSym
    # CSym = np.array([[1,2,3,4],[9,8,7,6],[9,5,3,8],[4,3,7,9]])
    # K = 2
    # a = np.sort(CSym, axis=0)[:: -1][0:K].T
    # CKq = a[0:K] / local_max

    # print(np.array_equal(CK, CKq) )
    # exit(0)

    CK = csc_matrix(CK)
    return CK + CK.T