import numpy as np


def get_NMI(assig_file, cluster_file):
    # with open(assig_file, 'r') as f:
    #     myassignment = [int(e) for e in f.readlines()]
    # with open(cluster_file, 'r') as f:
    #     clus = np.array([int(e) for e in f.readlines()])
    myassignment = np.array(assig_file)
    clus = np.array(cluster_file)
    clus_assig = cluster_sort(clus)
    nclusters = clus_assig.max()
    ntraj = max(myassignment)
    # nframes = len(clus_assig)

    myhist = np.zeros((nclusters, ntraj))
    for x in range(len(myassignment)):
        myhist[clus_assig[x] - 1, myassignment[x] - 1] += 1

    import pandas as pd
    pdhist = pd.DataFrame(myhist)
    # colSum = myhist.sum(axis=0)
    myhist = np.array(pdhist.apply(lambda row: row / myhist.sum(axis=0), axis=1))
    myhist = myhist / myhist.sum()
    NMI = normalmutualinf(myhist)
    return NMI


def normalmutualinf(data):
    import math
    s = 0
    e = 0
    pc = data.sum(axis=0)
    pr = data.sum(axis=1)

    for i in range(data.shape[0]):
        for j in range(data.shape[1]):
            if data[i, j] > 0:
                e += data[i, j] * math.log(data[i, j], 2)
                s += data[i, j] * math.log(data[i, j] / (pr[i] * pc[j]), 2)

    return -s/e
    # myhist = sweep(myhist, 2, colSums(myhist), FUN="/")


def cluster_sort(clusters):
    # l, w = clusters.shape
    s = list(range(clusters.min(), clusters.max() + 1))
    x = np.zeros(len(s))

    l = list()
    for i in range(len(s)):
        l.append(list(np.where(clusters == s[i])[0]))
        x[i] = np.median(l[i])
    ix = np.argsort(x)
    for i in range(len(s)):
        clusters[l[ix[i]]] = i + 1
    return clusters
