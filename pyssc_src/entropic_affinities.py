#cython: language_level=3, boundscheck=False
# Most of the code here translated from working Matlab version. 
# Names are bad, but will be left as is for a case when I need to debug something.
import numpy as np
from scipy.sparse import csc_matrix, lil_matrix


def driver(good_dist, perplexity, knn, good_ind):
    W, s = ea(good_dist, perplexity, knn, good_ind)
    return W


def ea(X, perplexity, knn=-1, ind=0):
    X = np.array(X)
    N = X.shape[0]
    if knn < 0:
        knn = N - 1
        # myflag = True

    D2 = X**2
    # knn = D2.shape[1]

    b = np.zeros(N)
    Wp = np.zeros((N, knn))
    logK = np.log(perplexity)
    B, D2 = eabounds(logK, D2)
    p = np.argsort(D2[:, perplexity-1])
    j = p[0]
    b0 = B[:, j].mean(axis=0)
    p = np.hstack([p, [0]])
    # from helper_libraries import printProgressBar
    for i in range(N):
        b[j], Wp[j] = eabeta(D2[j], b0, logK, B[:, j])
        b0 = b[j]
        j = p[i+1]
        # printProgressBar(i, N)
    # W = np.matlib.repmat(np.arange(10).T, 10, 1).T
    # print('Constructing sparse matrix(lil)')
    W = lil_matrix((N, N))
    for i in range(N):
        W[i, ind[i]] = Wp[i, range(len(ind[i]))]
        # printProgressBar(i, N)
    W = W.tocsc()
    # print('Constructed and convered to csc.')
    s = 0
    # if myflag :
    #     s = 1/np.sqrt(2*np.exp(b))
    return W, s


def eabeta(d2, b0, logK, B):
    eps = np.finfo(float).eps
    realmin = np.finfo(np.double).tiny
    maxit = 20
    tol = 1e-10

    if b0 < B[0] or b0 > B[1]:
        b = (B[0] + B[1])/2
    else:
        b = b0
    i = 1

    while True:
        bE = np.exp(b)
        pbm = 0
        ed2 = np.exp(-d2 * bE)
        m0 = sum(ed2)
        if m0 < realmin:
            # m1v = ed2*d2/realmin  # WARNING HERE
            # m1 = sum(m1v)  # WARNING HERE
            e = -logK
            pbm = 1
        else:
            m1v = ed2 * d2/m0
            m1 = sum(m1v)
            e = bE * m1 + np.log(m0) - logK

        if (abs(e) < tol) or (B[1] - B[0] < 10*eps):
            break

        if e < 0 and b <= B[1]:
            B[1] = b
        elif e > 0 and b >= B[0]:
            B[0] = b

        pbm = pbm or np.isinf(e) or e < -logK or e > np.log(d2.size) - logK

        if (not pbm):
            if(i == maxit):
                b = (B[0] + B[1])/2
                i = 0
                continue
            eg2 = bE**2
            m2 = np.dot(m1v, d2.T)
            m12 = m1**2 - m2
            g = eg2 * m12

            if g == 0:
                pbm = 1

        if pbm:
            esqd1 = np.exp(-d2 * np.exp(B[0]))  # If you see this error - increase your K
            esqd2 = np.exp(-d2 * np.exp(B[1]))

            if sum(esqd1 + esqd2) < 2*np.sqrt(realmin):
                break

            b = (B[0] + B[1])/2
            i = 0
            continue

        p = -e/g
        b += p

        if b < B[0] or b > B[1]:
            b = (B[0] + B[1])/2
            i = 0

        i += 1

    W = ed2/m0
    return b, W


def eabounds(logK, D2):
    N = D2.shape[1]
    logN = np.log(N)
    logNK = logN - logK
    delta2 = D2[:, 1] - D2[:, 0]
    eps = np.finfo(float).eps

    ind = np.where(delta2 < eps)[0]
    i = 3
    flag = 1
    while len(ind) > 0:  # NEEDS TESTING
        if i > np.exp(logK) and flag:
            D2[ind] = D2[ind]*0.99
            flag = 0
        delta2[ind] = D2[ind, i] - D2[ind, 0]
        ind = delta2[delta2 < eps]
        i += 1

    deltaN = D2[:, -1] - D2[:, 0]
    if logK > np.log(np.sqrt(2*N)):
        p1 = 0.75
    else:
        p1 = 0.25
        for i in range(100):
            e = -p1*np.log(p1/N) - logK
            g = -np.log(p1/N)+1
            p1 -= e/g
        p1 = 1 - p1/2

    bU1 = 2*np.log(p1*(N-1)/(1-p1))/delta2
    bL1 = 2*logNK/(1 - 1/N)/deltaN
    bL2 = 2*np.sqrt(logNK)/np.sqrt((D2[:, -1]**2 - D2[:, 0]**2))
    B = np.log([np.maximum(bL1, bL2)] + [bU1])

    return B, D2


def nnsqdist(X, k, method='sort'):
    import math
    N = X.shape[0]
    k = min(N - 1, k)
    mem = 1
    B = math.floor((mem * 1024**3) / (4 * N * 8) / 2)
    i1 = 0
    i2 = min(N, B)
    Xt = X.T
    X2 = X*X
    x2 = np.sum(X2, axis=1).T
    D2 = np.zeros((N, k))
    nn = np.zeros((N, k), np.int32)
    while i1 <= N:
        sdt = np.zeros((10, 10))
        tmp = 2 * np.dot(X[i1:i2], Xt)
        for i in range(Xt.shape[1]):
            sdt[i] = x2 - tmp[i]
        tmp2 = np.sum(X2[i1:i2], axis=1)
        sd1 = np.zeros((10, 10))
        for i in range(Xt.shape[1]):
            sd1[i] = sdt.T[i] + tmp2

        sd1[sd1 < 0] = 0

        if method == 'sort':
            ind = np.argsort(sd1, axis=1)
            sd1 = np.sort(sd1, axis=1)

        D2[i1:i2] = sd1[:, 1:k + 1]
        nn[i1:i2] = ind[:, 1:k + 1]
        i1 += B
        i2 = min(N, i1 + B - 1)

    return D2, nn
