# Most of the code here translated from working Matlab version. 
# Names are bad, but will be left as is for a case when I need to debug something.
def hminired(a):
    import numpy as np
    m, n = a.shape
    col_min = np.amin(a, axis=0)
    a -= col_min
    row_min = np.amin(a, axis=1).T
    a = (a.T - row_min).T
    j, i = np.where(a.T == 0)
    i += 1
    j += 1
    a = np.c_[a, -np.zeros(n)]
    for k in range(n):
        cols = j[k == i-1].T  # j[np.ix_(k==j)]
        ind = [n + 1] + list(cols)
        ind = [x - 1 for x in ind]
        a[k, ind] = list(- cols) + [0]
        # A[k,]
    return a


def hminiass(a):
    import numpy as np
    # A = A.astype(int)
    n, np1 = a.shape
    c = np.zeros(n, dtype=np.int16)
    u = np.zeros(n+1, dtype=np.int16)
    lz = np.zeros(n, dtype=np.int16)
    nz = np.zeros(n, dtype=np.int16)

    for i in range(1, n+1):
        lj = n+1
        j = -a[i-1, lj-1]
        while c[j-1] != 0:
            lj = j
            j = -a[i-1, lj-1]
            if j == 0:
                break

        if j != 0:
            c[j-1] = i
            a[i-1, lj-1] = a[i-1, j-1]
            nz[i-1] = -a[i-1, j-1]
            lz[i-1] = lj
            a[i-1, j-1] = 0
        else:
            lj = n+1
            j = -a[i-1, lj-1]

            while j !=0:
                r = c[j-1]
                lm = lz[r-1]
                m = nz[r-1]

                while m != 0:
                    if c[m-1] == -1:
                        break
                    lm = m
                    m = -a[r-1, lm-1]

                if m == 0:
                    lj = j
                    j = -a[i-1, lj-1]
                else:
                    a[r-1, lm-1] = -j
                    a[r-1, j-1] = a[r-1, m-1]
                    lz[r-1] = j
                    a[r-1, m-1] = 0
                    c[m-1] = r
                    a[i-1, lj-1] = a[i-1, j-1]

                    nz[i-1] = -a[i-1, j-1]
                    lz[i-1] = lj
                    a[i-1, j-1] = 0
                    c[j-1] = i

                    break
    r = np.zeros(n, dtype=np.int16)
    rows = c[c != 0]
    r[rows-1] = rows
    empty = list(np.where(r == 0)[0])
    ind = [n] + empty
    empty = [x + 1 for x in empty]
    u[ind] = empty + [0]

    return a, c, u


def hmflip(a, c, lc, lr, u, l, r):
    import numpy as np
    n = a.shape[0]
    while True:
        c[l-1] = r

        m = np.where(a[r-1] == -l)[0]
        a[r-1, m] = a[r-1, l-1]
        a[r-1, l-1] = 0

        if lr[r-1] < 0:
            u[n] = u[r-1]
            u[r-1] = 0
            break
        else:
            l = lr[r-1]

            a[r-1, l-1] = a[r-1, n]
            a[r-1, n] = -(l)
            r = lc[l-1]
    return a, c, u


def hmreduce(a, ch, rh, lc, lr, slc, slr):
    import numpy as np
    n = a.shape[0]
    covered_rows = (np.array(lr) == 0)
    covered_cols = (np.array(lc) != 0)

    r = list(np.where(covered_rows == False)[0])
    c = list(np.where(covered_cols == False)[0])

    m = np.amin(a[r][:, c], axis=0).min()
    # a[r][:, c] = a[r][:, c] - m
    for i in r:
        for j in c:
            a[i,j] -= m


    for j in c:
        for i in slr:
            if a[i-1, j] == 0:
                if rh[i-1] == 0:
                    rh[i-1] = rh[n]
                    rh[n] = i
                    ch[i-1] = j + 1
                row = a[i-1]
                cols_in_list = -row[row < 0]
                if len(cols_in_list) == 0:
                    l = n+1
                else:
                    l = cols_in_list[row[cols_in_list-1] == 0]

                a[i-1, l-1] = -(j+1)

    r = np.where(covered_rows == True)[0]
    c = np.where(covered_cols == True)[0]

    if len(c) > 0 and len(r) > 0:  #this is a bug in original .m file. Fixed
        res = np.argwhere(a[r][:, c] <= 0)
        i = list(res[:, 0])
        j = list(res[:, 1])

        i = list(r[i])
        j = list(c[j])

        for k in range(len(i)):
            lj = np.where(a[i[k]] == -(j[k]+1))[0]
            a[i[k], lj] = a[i[k], j[k]]
            a[i[k], j[k]] = 0

        for i in r:
            for j in c:
                a[i, j] += m

    return a, ch, rh


def hungarian(a):
    import numpy as np
    m, n = a.shape
    assert(m == n)

    orig = a
    a = hminired(a.astype(int))

    a, c, u = hminiass(a.astype(int))

    while u[n] != 0:
        lr = [0] * n
        lc = [0] * n
        ch = [0] * n
        rh = [0] * n + [-1]

        slc = []
        r = u[n]
        lr[r-1] = -1
        slr = [r]

        while True:
            if a[r-1, n] != 0:
                l = -a[r-1, n]

                if a[r-1, l-1] != 0 & rh[r-1] == 0:
                    rh[r-1] = rh[n]
                    rh[n] = r
                    ch[r-1] = -a[r-1, l-1]
            else:
                if rh[n] <= 0:
                    a, ch, rh = hmreduce(a, ch, rh, lc, lr, slc, slr)

                r = rh[n]
                l = ch[r-1]
                ch[r-1] = - a[r-1, l-1]

                if a[r-1, l-1] == 0:
                    rh[n] = rh[r-1]
                    rh[r-1] = 0

            while lc[l-1] != 0:
                if rh[r-1] == 0:
                    if rh[n] <= 0:
                        a, ch, rh = hmreduce(a, ch, rh, lc, lr, slc, slr)

                    r = rh[n]
                l = ch[r-1]
                ch[r-1] = -a[r-1, l-1]

                if a[r-1, l-1] == 0:
                    rh[n] = rh[r-1]
                    rh[r-1] = 0

            if c[l-1] == 0:
                a, c, u = hmflip(a, c, lc, lr, u, l, r)
                break
            else:
                lc[l-1] = r
                # Slc = [Slc l]
                slc = list(slc) + [l]
                r = c[l-1]
                lr[r-1] = l
                slr = list(slr) + [r]
                # Slr= [Slr r]
    K = np.zeros((n, n))
    for i in range(orig.shape[1]):
        K[c[i] - 1, i] = 1
    t = sum(orig[K.astype(bool)])
    # t = sum(orig[c.astype(bool), c.astype(bool)])
    # T = sum(orig(logical(sparse(C, 1:size(orig, 2), 1))));
    return c, t