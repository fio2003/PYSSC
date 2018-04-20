
def bestMap(L1, L2):
    import numpy as np
    from hungarian import hungarian

    L1 = np.array(L1)
    L2 = np.array(L2)
    assert(L1.size == L2.size)
    L1 = L1.astype(np.int32)
    L2 = L2.astype(np.int32)
    Label1 = list(set(L1))
    nClass1 = len(Label1)
    Label2 = list(set(L2))
    nClass2 = len(Label2)

    nClass = max(nClass1, nClass2)
    G = np.zeros((nClass, nClass), dtype=np.int32)
    for i in range(nClass1):
        for j in range(0, nClass2):
            G[i, j] = len(np.where((L1 == Label1[i]) & (L2 == Label2[j]))[0])

    c, t = hungarian(-G)
    newL2 = np.zeros(L2.size, dtype=np.int32)
    for i in range(nClass2):
        newL2[L2 == Label2[i]] = Label1[c[i]-1]

    return newL2
