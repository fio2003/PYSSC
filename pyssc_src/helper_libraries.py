#cython: language_level=3, boundscheck=False
import numpy as np
import struct as st
import hashlib
import os
import csv
import sys
import time
import fcntl
from multiprocessing import cpu_count
# from __future__ import print_function


def mutex_read_write_npyz(func, lock_type, full_name):
    # I am using nonblocking IO with only one reason - be able to exit by timeout.
    # if you know better way - you are welcome to change current implementation.
    forever_true = 0
    sleep_dur = 60  # seconds
    sleep_timer = 10000  # times
    suc_flag = False
    while forever_true < sleep_timer and not suc_flag:
        try:  # Next statement should be atomic by system call
            x = open(full_name, 'r')
            fcntl.flock(x, lock_type)  # get lock
            reuse_matr_loaded = func(full_name)
            x.close()
            suc_flag = True
        except(PermissionError, BlockingIOError):
            time.sleep(sleep_dur)
            forever_true += 1
    # if forever_true > 0:
    #     print('Stop waiting on lock. Waited ', forever_true * sleep_dur, ' seconds of ', sleep_timer * sleep_dur,
    #           ' possible.')
    if not suc_flag:
        print('Waited too long on lock for reus file.')
        exit(-3)
    return reuse_matr_loaded

def sync_reuse_func_2(options, foce_opt, myread_np, mywrite_np, full_name):
    import socket
    from os import getpid
    from time import sleep

    # connect to server and return desc
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    total_attempts = 0
    server_ip = '127.0.0.1' #enter cluster|node ip here
    server_port = 1987
    print('Connecting to the server...')
    while total_attempts < 10:
        try:
            sock.connect((server_ip, server_port))
            break
        except ConnectionRefusedError:
            total_attempts += 1
            sleep(10)
    if total_attempts == 10:
        print('Failed 10 times to connect to the server ', server_ip, ':', server_port)
        exit(-1)

    # form a message
    import os.path
    if os.path.exists(full_name):
        if(os.stat(full_name).st_size < (options['K']*options['num_elements']*4/options['thining_coef']) ):  # should have at least half size
            operation = 'WRIT' # although we are asking to write, file_scheduler will return READ if smbd was writing it
        else:
            operation = 'READ'
    else:
        operation = 'WRIT'
    send_str = '#'.join([str(getpid()), operation, full_name])
    str_let = '#'.join([str(len(send_str)), send_str])

    # send request
    print('PID: ', str(getpid()), 'DATA to SEND: ', str_let)
    sent = 0
    while (sent < len(str_let)):
        sent += sock.send(str_let[sent:].encode())
    print('PID: ', str(getpid()), 'DATA SENT: ', str_let)

    rec_mes_len = 4
    # if read/write - perform operation
    data = ''
    while len(data) < rec_mes_len:
        data += sock.recv(rec_mes_len - len(data)).decode()

    print('PID: ', str(getpid()), ' RAW DATA REC: ', data, ' len: ', len(data))
    for i in range(10):
        if data == 'READ':
            print(getpid(), ' READ')
            reuse_matr_loaded = myread_np(full_name)
            print(getpid(), ' DONE')
            operation = 'DONE'
            send_str = '#'.join([str(getpid()), operation, full_name])
            str_let = '#'.join([str(len(send_str)), send_str])
            sent = 0
            while (sent < len(str_let)):
                sent += sock.send(str_let[sent:].encode())
            print(getpid(), ' SENT')
            break
        elif data == 'WRIT':
            print(getpid(), ' WRIT')
            if os.path.exists(full_name):
                os.remove(full_name)
            # x = os.open(full_name, os.O_CREAT | os.O_SYNC | os.O_DIRECT | os.O_EXCL, 0o000)
            #
            # for it in range(10):
            #     try:
            #         fcntl.flock(x, fcntl.LOCK_EX | fcntl.LOCK_NB)
            #         break
            #     except OSError:
            #         it +=1
            #         time.sleep(15)
            #
            # os.chmod(full_name, 420)  # 644 permission
            reuse_matr_loaded = mywrite_np(full_name)
            print(getpid(), ' DONE')
            # os.chmod(full_name, 436)
            # fcntl.flock(x, fcntl.LOCK_UN)
            # os.close(x)
            # print(getpid(), ' CLOSET')
            operation = 'DONE'
            send_str = '#'.join([str(getpid()), operation, full_name])
            str_let = '#'.join([str(len(send_str)), send_str])
            sent = 0
            while (sent < len(str_let)):
                sent += sock.send(str_let[sent:].encode())
            print(getpid(), ' DONE')
            break
        elif data == 'WAIT':
            data = ''
            while len(data) < rec_mes_len:
                data += sock.recv(rec_mes_len - len(data)).decode()
            print('PID: ', str(getpid()), ' RAW DATA recieved: ', data, ' len: ', len(data))
        elif data == 'EXIT_ERROR':
            exit(-100)
        else:
            print('Unknown answer: ', str(data))
            exit(-5)

    sock.close()

    return reuse_matr_loaded


# def sync_reuse_func(options, foce_opt, myread_np, mywrite_np, full_name):
#     try:
#         if options['force'] == foce_opt:
#             if options['verbose'] > 0:
#                 print('WARNING: I ENABLED FORCE RECOMPUTE. NO REUSE FILES WILL BE READ.')
#             raise FileNotFoundError('FORCE RECOMPUTE')
#         if oct(os.lstat(full_name).st_mode)[6:7] != '6':
#             raise BlockingIOError
#         x = open(full_name, 'r')
#         fcntl.flock(x, fcntl.LOCK_SH | fcntl.LOCK_NB)  # get lock
#         reuse_matr_loaded = myread_np(full_name)
#         fcntl.flock(x, fcntl.LOCK_UN)  # get lock
#         x.close()
#     except(BlockingIOError, FileExistsError, PermissionError):
#         # this handles attempt to read file that is not yet generated
#         # processes will wait until lock is released and then read file in parallel
#         reuse_matr_loaded = mutex_read_write_npyz(myread_np, fcntl.LOCK_SH | fcntl.LOCK_NB, full_name)
#     except(ValueError, FileNotFoundError, EOFError, OSError) as e:
#         # this handles situation when there is no file to read or it was read with errors(error during prev generation)
#         if type(e).__name__ in ('ValueError', 'EOFError', 'OSError'):
#             fcntl.flock(x, fcntl.LOCK_UN)
#
#         try:  # Next statement should be atomic by system call
#             x = os.open(full_name, os.O_CREAT | os.O_SYNC | os.O_DIRECT | os.O_EXCL, 0o000)
#
#             for it in range(10):
#                 try:
#                     fcntl.flock(x, fcntl.LOCK_EX | fcntl.LOCK_NB)
#                     break
#                 except OSError:
#                     it +=1
#                     time.sleep(15)
#             os.chmod(full_name, 420)  # 644 permission
#             if options['verbose'] > 0:
#                 print('Opt problem soulution matrix reuse file was not found. If you do not have file "' + full_name + '" - ignore it.')
#             reuse_matr_loaded = mywrite_np(full_name)
#             os.chmod(full_name, 436)  # 664 permission
#             fcntl.flock(x, fcntl.LOCK_UN)
#             os.close(x)
#             if options['verbose'] > 0:
#                 print('Generated and stored new opt reuse file.')
#         except(PermissionError, FileExistsError) as e:
#             # if user wants to generate new file maybe because he/she thinks that there was an error previously,
#             # then process will wait until current file is generated, lock is released and then lock file again and start generation of the new file.
#             # NOTE: there is no guarantee that some 'read' thread (will)/(will not) read 'old' file.
#             #       whoever took lock first - will proceed, but most likely when one 'read' obtains the lock, other
#             #       'read' threads will also read same version of the file.
#             if options['force'] == foce_opt or \
#                     (type(e).__name__ == 'FileExistsError' and oct(os.lstat(full_name).st_mode)[6:7] == '6') :
#                 reuse_matr_loaded = mutex_read_write_npyz(mywrite_np, fcntl.LOCK_EX | fcntl.LOCK_NB, full_name)
#             else:
#                 # this means that two processes tried to create new file. In this case only one will create file and
#                 # other processes will wait and read file
#                 reuse_matr_loaded = mutex_read_write_npyz(myread_np, fcntl.LOCK_SH | fcntl.LOCK_NB, full_name)
#
#     return reuse_matr_loaded


def opt_coefficients(Xp, options):  # timestamp, verbose,  projdim, noskip, affinity_matrix, n_clusters, K):
    from SparseCoefRecovery import SparseCoefRecovery

    realname = options['opt_reuse_filename']
    reuse_db_path = options['prot_dir'] + 'reuse_db/'
    full_name = reuse_db_path + realname + '.dat.npy'

    def mywrite_npy(full_name):
        solution_of_opt_problem = SparseCoefRecovery(Xp.T, options)
        np.save(reuse_db_path + realname + '.dat', solution_of_opt_problem)
        # save_CMAT(reusename, solution_of_opt_problem)
        statinfo = str(os.stat(options['prot_dir'] + options['in_file']).st_size)
        with open(full_name + '.desc', 'w') as file:
            file.write('This file contains description of experiment with hash: ' + options['opt_reuse_filename'] + '\n')
            file.write('input file:\t'      + str(options['in_file'])   + '\n')
            file.write('input file size:\t' + str(statinfo)             + '\n')
            file.write('projection:\t'     + str(options['projection']) + '\n')
            file.write('solver:\t'         + str(options['solver'])     + '\n')
            file.write('optm:\t'           + str(options['optm'])       + '\n')
            file.write('cst:\t'            + str(options['cst'])        + '\n')
            file.write('lambda:\t'         + str(options['plambda'])    + '\n')
            file.write('matlab solver:\t'  + str(options['matlab_solver']) + '\n')
            file.write('file and description creation date:\t' + str(options['timestamp']) + '\n')
        return solution_of_opt_problem

    solution_of_opt_problem = sync_reuse_func_2(options, 2, np.load, mywrite_npy, full_name)

    return solution_of_opt_problem


def check_affinity_reuse(Xp, options):
    from generate_full_matr import generate_full_matr
    from scipy.sparse import save_npz, load_npz

    realname = options['aff_reuse_name']
    reuse_db_path = options['prot_dir'] + 'reuse_db/'
    full_name = reuse_db_path + realname + '.dat.npz'

    def mywrite_npz(full_name):
        full_matr = generate_full_matr(Xp.shape[0], options, 1)
        save_npz(reuse_db_path + realname + '.dat', full_matr)
        statinfo = str(os.stat(options['prot_dir'] + options['dist_import_filename']).st_size)
        with open(full_name + '.desc', 'w') as file:
            file.write('This file affinity matrix with hash: ' + options['aff_file_crc32'] + '\n')
            file.write('input file size:\t' + str(statinfo) + '\n')
            file.write('dimention[0]:\t' + str(Xp.shape[0]) + '\n')
            file.write('sigma:\t' + str(options['sigma']) + '\n')
            file.write('k:\t' + str(options['k']) + '\n')
            file.write('file and description creation date:\t' + str(options['timestamp']) + '\n')
        return full_matr

    full_matr = sync_reuse_func_2(options, 1, load_npz, mywrite_npz, full_name)

    # if options['thining_coef'] > 1:
    #     th = options['thining_coef']
    #     st = options['start_thining_from']
    #     return full_matr[st::th, st::th]

    return full_matr


def check_affinity_reuse_par(child_conn, Xp, options):
    child_conn.send(check_affinity_reuse(Xp, options))
    child_conn.close()


def get_assignment_matr(Xp, assig_filename, n_clusters, prot_dir):
    s = []
    if assig_filename == 'generate':
        numel = Xp.shape[0] // n_clusters
        for i in range(1, n_clusters + 1):
            s.extend(numel*[i])
        if Xp.shape[0] != len(s):
            print('WARNING !!!! : Cannot divide points by clusters evenly !!!')
            print('NMI, best map and other results will be incorrect.')
            s.extend(list(range(1, Xp.shape[0] - len(s) + 1)))
            s.sort()
    else:
        with open(prot_dir + assig_filename, 'r') as file:
            for line in file:
                s.extend(int(line))
    return s


def get_data_file(options):
    with open(options['prot_dir'] + options['in_file'], 'rb') as file:
        initial_1d_array = np.frombuffer(file.read(), dtype=np.float64, count=-1)
    try:
        Xp = np.reshape(initial_1d_array, (options['num_elements'], -1))
    except ValueError:
        print('Error when reshaping coordinates file. '
              'Are you sure that there should be ' + options['num_elements'] + 'elements?')
        print('I am going to exit, and you think about your numbers.')
        exit(-2)
    # if we want to reduce final size by taking every nth element
    if options['thining_coef'] > 1:
        Xp = Xp[options['start_thining_from']::options['thining_coef']]
    return Xp


def heatmap_plot(name, K, optm, timestamp, prot_dir):
    from matplotlib import pyplot as plt

    full_name = name + '_K' + str(K) + '_' + optm + '_' + timestamp + '.csv'
    i = 0
    arr = []
    with open(prot_dir + full_name, 'r', newline='\n') as csvfile:
        myreader = csv.reader(csvfile, delimiter=',')
        for row in myreader:
            arr.append([])
            for element in row:
                arr[i].append(float(element))
            i += 1

    full_name = name + '_K' + str(K) + '_' + optm + '_' + timestamp + '.png'
    heatmap = plt.pcolor(arr, cmap='hot')
    plt.title(full_name)
    plt.colorbar()
    plt.savefig(prot_dir + full_name, dpi=300)


def simple_heatmap(matr, full_name, prot_dir):
    from matplotlib import pyplot as plt

    plt.pcolor(matr, cmap='hot')
    plt.title(full_name)
    plt.colorbar()
    plt.savefig(prot_dir + full_name, dpi=300)


# this function is not supported any more. Most likely it will be deleted later.
def matlab_get_CMAT(Xp, full_matr, num_elements, n_clusters, K, optm, cst, projdim, plambda, timestamp, reusename,
                    noskip, color_flag, verbose):
    if color_flag:
        from colorama import Fore
    if verbose > 1:
        print('setting environment')

    os.environ["num_of_elements"] = str(num_elements)
    os.environ["n_dim"] = str(n_clusters)
    os.environ["K_coef"] = str(K)
    os.environ["OptM"] = str(optm)
    os.environ["Cst"] = str(int(cst))
    os.environ["projdim"] = str(int(projdim))
    os.environ["plambda"] = str(plambda)
    os.environ["timestamp"] = str(timestamp)
    os.environ["reuse_name"] = reusename
    os.environ["noskip"] = str(int(noskip))

    skip_cvx = False
    if verbose > 1:
        print('skip_cvx: ', str(skip_cvx))

    if not skip_cvx:
        #     print(warning, 'Generation of Xp_Py was disabled for K`s experiment')
        filename_1 = './Xp_Py_K' + str(K) + "_" + optm + "_" + timestamp + ".csv"
        filename_2 = './full_matr_K' + str(K) + "_" + optm + "_" + timestamp + ".csv"
        with open(filename_1, 'w') as matlab_infile:
            matlab_csv = csv.writer(matlab_infile, dialect='excel')
            for elem in Xp.T:
                matlab_csv.writerow(elem)
        with open(filename_2, 'w') as matlab_infile:
            matlab_csv = csv.writer(matlab_infile, dialect='excel')
            for elem in full_matr.T:
                matlab_csv.writerow(elem)
                # For debuger:
                # os.environ["ssc_path"] = "./SSC_1.0/"
                # os.environ["cvx_path"] = "${HOME}/mosek/7/toolbox/r2013a/"
        try:
            os.environ["ssc_path"]
            os.environ["cvx_path"]
            path_to_matlab_ssc = os.getenv('ssc_path')
        except KeyError:
            print("ENV variables are not set ! Please read README.md")
            exit(1)
        if verbose > 1:
            print('Successfully checked env variables')

        matlab_command = "matlab -nodisplay -nosplash < " + path_to_matlab_ssc + "./SSC.m"
        if verbose > 1:
            print('Matlab command: ', matlab_command)
        elif verbose == 0:
            matlab_command += ' > /dev/null'

        import subprocess
        if color_flag:
            print(Fore.LIGHTMAGENTA_EX)
        subprocess.call([matlab_command], shell=True)
        if color_flag:
            print(Fore.RESET)
        sys.stdout.flush()

        # os.system( 'lzma ./reuse_db/' + reusename )
        os.remove(filename_1)
        os.remove(filename_2)

# this function is not supported any more.
def save_CMAT(reusename, CMat):
    with open('./reuse_db/' + reusename, 'wb') as file:
        totsize = CMat.shape[0] * CMat.shape[1]
        FM = np.reshape(CMat.T, (totsize, 1))
        FMPacked = st.pack(str(totsize) + 'd', *FM)
        file.write(FMPacked)


def store_result_in_db( nmi_batch,  NMI, iter_counter, newGrps, options):
    from sqlite3 import connect, OperationalError
    cur_timestamp = str(time.time())
    q_str = 'INSERT OR REPLACE INTO NMI VALUES (' + str(options['K']) + ', ' + str(options['k']) + ', ' + str(
        NMI) + ', ' + str(nmi_batch.min()) + ', ' + str(np.average(nmi_batch)) + ', ' + str(
        np.median(nmi_batch)) + ', ' + cur_timestamp + ', ' + str(iter_counter) + ', ' + '"' + str(
        list(nmi_batch)) + '"' + ', ' + str(options['n_clusters']) + ', ' + str(
        options['num_elements']) + ', ' + str(options['thining_coef']) + ', ' + str(
        options['start_thining_from']) + ', ' + str(options['alg_choice']) + ', 0, ' + str(
        options['num_elements']) + ', ' + '"' + str(options['prot_dir']) + '"' + ', ' + '"' + str(
        options['solver']) + '"' + ', ' + str(options['plambda']) + ', ' + str(options['sigma']) + ', ' + '"' + str(
        options['aff_reuse_name']) + '"' + ', ' + '"' + str(options['opt_reuse_filename']) + '"' + ', ' + '"' + \
            options['aff_type'] + '"' + ');'

    group_str = ''
    myl = list(newGrps)
    for elem in myl:
        group_str += (str(elem) + ',')
    q_str2 = 'INSERT OR REPLACE INTO GRPS VALUES (' + str(options['K']) + ', ' + str( options['k']) + ', "' + group_str + '", ' + cur_timestamp + ");"
    tot_query = q_str + q_str2
    con = connect(options['db_name'])
    attemptss_left = 1

    with con:
        cur = con.cursor()
        while(True):
            try:
                cur.executescript(tot_query)
                break
            except OperationalError:
                print('Error in DB insert|replace. Sleeping for 1 second and trying again: ', OperationalError)
                time.sleep(1)

def set_color(color_flag):
    if color_flag:
        from colorama import init, Fore
        init()
        info = Fore.LIGHTBLUE_EX + 'INFO: ' + Fore.RESET
        fail = Fore.RED + 'ERROR: ' + Fore.RESET
        times = Fore.LIGHTYELLOW_EX + 'TIME: ' + Fore.RESET
        warning = Fore.LIGHTWHITE_EX + 'WARNING: ' + Fore.RESET
    else:
        info = "INFO: "
        fail = "ERROR: "
        times = "TIME: "
        warning = 'WARNING: '
    return info, fail, times, warning


def log_print(old_check_point, verbose, message):
    if verbose > 0:
        cur_check_point = time.time()
        print(message, cur_check_point - old_check_point)
        return cur_check_point
    return 0


def get_intervals_for_parallel(N):
    num_cpu = min(cpu_count(), N)
    intervals = num_cpu * [None]
    in_int = N // num_cpu
    rem_int = N % num_cpu
    for i in range(0, rem_int):
        intervals[i] = in_int + 1
    for i in range(rem_int, num_cpu):
        intervals[i] = in_int
    intervals[0] = [0, intervals[0]]
    for i in range(1, num_cpu):
        intervals[i] = [intervals[i - 1][0] + intervals[i], intervals[i]]
    return num_cpu, intervals


def get_dist_ind_knn(k, permutation, fit_frame, ref_filename='sincos.dat', fit_filename='sincos.dat', sort=True,
                     vector_size=0, blksize=128, d_filename='distances.dat', i_filename='indices.dat', c=False):
    ref_coords = list()
    fit_coords = list()
    k1 = k + 1
    max_blks = 1024 * 1024 * 1024 / 8

    #  Read    coordinates
    mycoords = list(vector_size)
    with open(ref_filename, 'rb') as myfile:
        ref_coords = np.frombuffer(myfile.read(), dtype=np.float64, count=-1)

    with open(fit_filename, 'rb') as myfile:
        fit_coords = np.frombuffer(myfile.read(), dtype=np.float64, count=-1)

    max_blks /= len(fit_coords)
    if (blksize > max_blks):
        blksize = max_blks
    if (blksize > len(fit_coords)):
        blksize = len(fit_coords)

    def permutation(blksize):
        return list(blksize)

    fits = permutation(blksize)
    for x in range(blksize):
        fits[x].data.resize(ref_coords.size())

    if (len(ref_coords)-1 < k):
        k = len(ref_coords) - 1
        k1 = k + 1

    def distance(vector_size, a, b):
        pass

    for frame in range(blksize):
        for ref_frame in range(len(ref_coords)):
            fits[frame].data[ref_frame] = distance(vector_size, fit_coords[frame + fit_frame], ref_coords[ref_frame])
    if sort:
        fits[frame].sort(k1)

    # Write
    with open(d_filename, 'w') as distances:
        with open(i_filename, 'w') as indices:
            for frame in range(blksize):
                if (sort):
                    distances.write(fits[frame].data[1])
                    indices.write(fits[frame].indices[1])
                else:
                    distances.write(fits[frame].data[0])
                    indices.write(fits[frame].indices[0])

    return 0, 0


def get_options(num_elements, n_clusters, in_file, K, color_flag, out_file, projection, solver, optm,
                plambda, cst, projdim, verbose, matlab_solver, assig_filename, noskip, k, sigma,
                timestamp, db_name, alg_choice, force, prot, thinning_coef):
    info, fail, times, warning = set_color(color_flag)
    options = {
        "num_elements": int(num_elements),
        "n_clusters":   int(n_clusters),
        "in_file":      in_file,
        "K":            int(K),
        "color_flag":   color_flag,
        "out_file":     out_file,
        "projection":   projection,
        "solver":       solver,
        "optm":     optm,
        "plambda":  plambda,
        "cst":      cst,
        "projdim":  projdim,
        "verbose":  verbose,
        "matlab_solver" : matlab_solver,
        "assig_filename": assig_filename,
        "noskip":   noskip,
        "k":        int(k),
        "timestamp":timestamp,
        "info":     info,
        "fail":     fail,
        "times":    times,
        "warning":  warning,
        "db_name":  db_name,
        "thining_coef": 1,
        "start_thining_from": 0,
        "alg_choice":   alg_choice,
        "force":    force,
        "iter_counter": 80,
        "want_normalize_like_in_matlab": False,
        "kmeans_minibatch":  False,
        "kmeans_max_iter":   1, # Maximum number of iterations for KMeans and kmeans2
        "spectral_eig_algo": 1, # 1 - fast and accurate
        "mul_method":        'dense',
        "dist_import_filename": "distances.dat",
        "ind_import_filename":  "indices.dat",
        "parallel_affinity": False, # parallel version commented since Python cannot pickle data > 4Gb. Will be fixed later.
        "prot_dir": './proteins/' + prot + '/',
        "thining_coef": thinning_coef
    }

    if(k <= 0):
        options['aff_type'] = 'plain_aff'
        options["sigma"] = float(sigma)
    else:
        options['aff_type'] = 'entropic_aff'
        options["sigma"] = '0'

    if alg_choice > 1:
        statinfo = str(os.stat(options['prot_dir'] + in_file).st_size)
        filename = in_file + statinfo + "_" + str(projection) + str(solver) + str(optm) \
                   + str(cst) + str(matlab_solver) + '_' + str(plambda)
        options['opt_file_crc32'] = CRC32_func(options['prot_dir'] + in_file)
        # options['opt_reuse_filename'] = options['opt_file_crc32'] + '_' + str(hashlib.md5(filename.encode('utf-8')).hexdigest())
        options['opt_reuse_filename'] = options['opt_file_crc32'] + '_' + filename
        if options['thining_coef'] > 1:
            options['opt_reuse_filename'] += '_thinned_' + str(options['thining_coef']) + '_' + str(options['start_thining_from'])
    else:
        options['opt_reuse_filename'] = 'not_used'

    # check if dir exists
    if not os.path.exists(options['prot_dir'] + 'reuse_db/'):
        os.makedirs(options['prot_dir'] + 'reuse_db/')

    return options


def set_aff_reuse_name(Xp_shape_0, options):
    statinfo = str(os.stat(options['prot_dir'] + options['dist_import_filename']).st_size)
    filename = statinfo + "_" + str(Xp_shape_0) + '_' + str(options['sigma']) + '_' + str(options['K']) + '_' + str(options['k'])
    options['aff_file_crc32'] = CRC32_func(options['prot_dir'] + options['dist_import_filename'])
    options['aff_reuse_name'] = options['aff_file_crc32'] + '_' + filename
    # options['aff_reuse_name'] = options['aff_file_crc32'] + '_' + str(hashlib.md5(filename.encode('utf-8')).hexdigest())
    if options['thining_coef'] > 1:
        options['aff_reuse_name'] += '_thinned_' + str(options['thining_coef']) + '_' + str(options['start_thining_from'])
    return options


def special_normalization(normalized_solution_of_min_prob):
    # like in matlab code
    from scipy.sparse import csc_matrix

    normalized_solution_of_min_prob = np.array(normalized_solution_of_min_prob.todense())
    # if you want same procedure as in MATLAB
    N = normalized_solution_of_min_prob.shape[0]
    for i in range(0, N):
        c = normalized_solution_of_min_prob[:, i]
        PInd = np.argsort(c)[::-1]
        # print('I=', str(i), ' c[PInd[0]= ', c[PInd[0]])
        normalized_solution_of_min_prob[:, i] = normalized_solution_of_min_prob[:, i] / abs(c[PInd[0]])

    normalized_solution_of_min_prob = normalized_solution_of_min_prob.T

    N = normalized_solution_of_min_prob.shape[0]
    for i in range(0, N):
        c = normalized_solution_of_min_prob[:, i]
        PInd = np.argsort(c)[::-1]
        # print('I=', str(i), ' c[PInd[0]= ', c[PInd[0]])
        normalized_solution_of_min_prob[:, i] = normalized_solution_of_min_prob[:, i] / abs(c[PInd[0]])

    normalized_solution_of_min_prob = normalized_solution_of_min_prob.T

    return csc_matrix(normalized_solution_of_min_prob)


def printProgressBar (iteration, total, decimals = 1, length = 40):
    percent = ("{0:." + str(decimals) + "f}").format(100 * (iteration / float(total)))
    filledLength = int(length * iteration // total)
    bar = '█' * filledLength + '-' * (length - filledLength)
    full_line = '\r |%s| %s%% '% (bar, percent)
    print(full_line, end='\r')
    # Print New Line on Complete
    if iteration == total:
        print()


def CRC32_func(filename):
    import binascii
    with open(filename, 'rb') as file:
        file = (binascii.crc32(file.read()) & 0xFFFFFFFF)
    return "%08X" % file