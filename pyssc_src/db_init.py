#!/usr/bin/python
import sqlite3 as lite
import os

filelist = os.listdir(os.getcwd())
flag = False
if 'results.db' not in filelist:
    flag = True
else:
    user_choice = input('Do you really want to drop the database ? Type "yes" to continue:\n ')
    if user_choice.isalpha() and user_choice == 'yes':
        flag = True

if not flag:
    exit(0)


con = lite.connect('results.db')
with con:
    cur = con.cursor()
    cur.execute('DROP TABLE IF EXISTS nmi')
    cur.execute('DROP TABLE IF EXISTS GRPS')
    cur.execute("CREATE TABLE nmi(K_cap INT, k_low INT, NMI_max REAL, NMI_min REAL, \
        NMI_avg REAL, NMI_med REAL, UNIX_TIME INT, ATTEMPTS INT, NMII_BATCH_VALUES BLOB, \
        clusters_to_find INTEGER, total_points INTEGER, thining_coef INTEGER, start_thinig_from INTEGER, \
        algo_choice INTEGER, sparsity INTEGER, num_elements INTEGER, in_file TEXT, solver TEXT, \
        plambda REAL, sigma NULL, aff_reuse_name TEXT, opt_reuse_name TEXT, aff_type TEXT, \
        PRIMARY KEY (K_cap, k_low))")

    cur.execute('CREATE UNIQUE INDEX "first_ind" on nmi (K_cap ASC, k_low ASC, UNIX_TIME ASC)')
    cur.execute('CREATE INDEX "time_ind" on nmi (UNIX_TIME DESC)')

    cur.execute("CREATE TABLE GRPS(K_cap INT, k_low INT, ASIG_GRPS TEXT, UNIX_TIME INT, PRIMARY KEY (K_cap, k_low))")
    cur.execute('CREATE INDEX idx3 on GRPS (K_cap)')
    cur.execute('CREATE INDEX idx4 on GRPS (k_low)')
    # cur.execute("INSERT INTO Cars VALUES(1,'Audi',52642)")
    # cur.execute("INSERT INTO Cars VALUES(2,'Mercedes',57127)")
