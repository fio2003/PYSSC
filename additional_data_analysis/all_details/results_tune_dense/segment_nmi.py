#!/usr/bin/env python
#cython: language_level=3, boundscheck=False

def parse_field(field_name, df, filename, output_name):
    import csv
    import os
    n = 3

    first_part = (max(df[field_name].values) - min(df[field_name].values)) / n
    cur_list = list()
    for i in range(n-1):
        cur_list.append(df[(df[field_name] >= int(i * first_part + min(df[field_name].values)) ) & (df[field_name] < int((i + 1) * first_part + min(df[field_name].values) ))])

    cur_list.append(df[(df[field_name] >= int((n-1) * first_part + min(df[field_name].values)) ) & (df[field_name] <= int(n * first_part + min(df[field_name].values) ))])
    # print(filename)
    filename = os.path.basename(filename)
    print(filename)
    parsed_filename = os.path.splitext(filename)[0].split('_')
    # print(filename)


    with open(output_name, 'a') as csvfile:
        spamwriter = csv.writer(csvfile, delimiter=',',
                                quotechar='|', quoting=csv.QUOTE_MINIMAL)
        spamwriter.writerow(
            [parsed_filename[0], parsed_filename[1], parsed_filename[2], field_name, max(cur_list[0].NMI_med.values),
             max(cur_list[1].NMI_med.values), max(cur_list[2].NMI_med.values)])


def main():
    import pandas as pd
    import sys

    if len(sys.argv) < 3:
        print('Too little arguments.')
        exit()

    filename = sys.argv[1]
    outfile = sys.argv[2]
    # filename = 'trp_cal_plot_dir.csv/trp_en_3.csv'
    df = pd.read_csv(filename)
    parse_field('K_cap', df, filename, outfile)
    parse_field('k_low', df, filename, outfile)

if __name__ == "__main__":
    # import sys
    # print(str(sys.argv) )
    main()