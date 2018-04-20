 
results.db is an sqlite3 database with PYSSC results.
It consists of two tables:
  nmi - contains the most important information: 
    K_cap             INT        - Knn 
    k_low             INT        - perplexity for entropic affinities
    NMI_max           REAL,      - max nmi in the kmeans batch
    NMI_min           REAL,      - min nmi in the kmeans batch
    NMI_avg           REAL,      - average nmi in the kmeans batch
    NMI_med           REAL,      - median nmi in the kmeans batch
    UNIX_TIME         INT,       - timestamp - for internal use
    ATTEMPTS          INT,       - size of kmeans batch - usually 80, depends on kmeans batch function in PYSSC. This data does not contain previous attempts to determine good value or compare different functions, but, trust me, 80 is more than enough for this experiment. For more info check the code.
    NMII_BATCH_VALUES BLOB,      - all 80 nmi values if you do not trust NMI_max, NMI_min, etc
    clusters_to_find  INTEGER,   - usually 10 for NMI computation reason
    total_points      INTEGER,   - number of data points to cluster - either 2510 for sparse and supersparse or 25010 for dense data
    thining_coef      INTEGER,   - subsampling for supersparse data, 1 for sparse, 10 for supersparse - takes nth point from sample
    start_thinig_from INTEGER,   - related to the previous field - selects which point to take as first point - never used in this db
    algo_choice       INTEGER,   - 1: SC (spectral), 2: SSC (subspace), 3: SDS (dot product), 4: SES (element wise) (read the article)
    sparsity          INTEGER,   - never used, created for thinning purpuses, but we decided not to explore thinning path
    num_elements      INTEGER,   - same as total_points - never used because of previous reason
    in_file           TEXT,      - path to protein folder with distance matrices and other info
    solver            TEXT,      - usually ECOS, previously I tried different solvers for SSC, but ECOS produced the best results. You can find other solvers' references in the PYSSC code. Main problems where : crashed, production of wrong or corrupted data. It is possible that nowadays other solvers behave better and you are welcome to explore it again
    plambda           REAL,      - usually 0.001, parameter in convex problem for SSC
    sigma             TEXT,      - sigma for GSF (Gaussian function)
    aff_file          TEXT,      - reuse file for precomputed affinities - used to avoid computing the same values over and over - significantly reduced time for batch sets
    opt_file          TEXT,      - reuse file with solution of the convex problem for SSC, name contains input parameters.
    aff_type          TEXT       - either plain (GSF) or entropic

  GRPS - K_cap, k_low, UNIX_TIME - same as in nmi table, ASIG_GRPS - group label for each item.

  Please not that not all items in nmi group have group labels in GRPS. I turned off logging groups to keep size of db smaller, however most of runs with dense data had GRPS. We did not use GRPS values in our article at all.
