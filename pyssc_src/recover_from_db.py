def recover_in_file(k, K, filename):
    import sqlite3 as lite
    import datetime

    con = lite.connect('results.db')

    with con:
        cur = con.cursor()
        cur.execute('SELECT * FROM GRPS')
        result = cur.fetchall()
        for row in result:
            print('Found groups with next parameters:')
            print("K = "     + str(row[0]))
            print("k = "     + str(row[1]))
            print("Created " + datetime.datetime.fromtimestamp(row[3]).strftime('%Y-%m-%d %H:%M:%S'))
            with open('clusters1.dat', 'w') as f:
                clean_numbers = (list(map(int, row[2].strip()[:-1].split(','))))
                for number in clean_numbers:
                    f.write(str(number) + '\n')
            print("File saved as " + filename)



if __name__ == "__main__":
    k=300
    K=350
    filename = 'clusters1.dat'
    recover_in_file(k, K, filename)