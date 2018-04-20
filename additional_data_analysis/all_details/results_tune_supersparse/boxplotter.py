#!/usr/bin/env python
#cython: language_level=3, boundscheck=False

import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import wilcoxon

subtypes = ["med", "min", "max", "avg"]
violin = True

def set_figure(title):
    fig = plt.figure(figsize=(4, 5))
    plt.title(title)
    plt.ylabel('nmi')
    plt.xlabel('algorithm')
    axes = plt.gca()
    axes.set_ylim([0, 0.8])
    # minor_ticks = np.arange(0.75, 3, 0.85)
    # axes.set_xticks(minor_ticks, minor=True)
    axes.yaxis.grid(True)
    axes.yaxis.grid(ls='dashed')
    # axes.grid(which='minor', alpha=0.8)
    # axes.grid(which='major', alpha=0.0)
    return fig

def read_protein(filename):
    df = pd.read_csv(filename)
    df = df[["NMI_max", "NMI_min", "NMI_avg", "NMI_med", "algo_choice", "k_low"]]
    df.fillna(0, inplace=True)
    prot_name = filename.split('/')[1].split('_')[0]
    df_pl = df[["NMI_max", "NMI_min", "NMI_avg", "NMI_med", "algo_choice"]][(df.k_low <= 0) & (df.algo_choice != 2)]
    df_en = df[["NMI_max", "NMI_min", "NMI_avg", "NMI_med", "algo_choice"]][(df.k_low > 0) & (df.algo_choice != 2)]
    if len(df_en) > 0:
        plot_dataframe(df_en, 'Entropic', prot_name)
        df_en['protein'] = prot_name
    if len(df_pl) > 0:
        plot_dataframe(df_pl, 'Plain', prot_name)
        df_pl['protein'] = prot_name

    return df_en, df_pl

def plot_dataframe(df, ptype, part_name):

    tname = part_name
    if part_name == 'nup':
        tname = 'NUP116'
    elif part_name == 'nsp':
        tname = 'NSP1'
    elif part_name == 'trp':
        tname = 'TRP Cage'
    elif part_name == 'gb1':
        tname = 'GB1'

    for stat_type in subtypes:
        fig = set_figure(tname + " " + ptype + ' affinity')
        # fig = set_figure(part_name + " " + type + " " + stat_type)
        local_df = df[["NMI_" + stat_type, 'algo_choice']]
        arr_to_plot = [local_df[local_df.algo_choice == 1]["NMI_" + stat_type],
                       local_df[local_df.algo_choice == 3]["NMI_" + stat_type],
                       local_df[local_df.algo_choice == 4]["NMI_" + stat_type]]
        lbl = ['SC', 'SDS', 'SES']
        plt.boxplot(arr_to_plot, notch=True, sym='', labels=lbl)
        for i in range(len(arr_to_plot)):
            for j in range(len(arr_to_plot)):
                if i != j:
                    try:
                        if len(arr_to_plot[i]) > len(arr_to_plot[j]):
                            res = wilcoxon(arr_to_plot[i][:len(arr_to_plot[j])], arr_to_plot[j])[1]
                        else:
                            res = wilcoxon(arr_to_plot[i], arr_to_plot[j][:len(arr_to_plot[i])])[1]
                        if res > 0.0003:
                            with open('algo' + '_' + part_name + '_' + ptype + '_' + stat_type + '.txt', 'a') as f:
                                f.write(lbl[i] + " " + lbl[j] + " " + str(res) + '\n')

                    except Exception as e:
                        print(e)

        # a = wilcoxon(arr_to_plot[0], arr_to_plot[1])
        if violin:
            plt.violinplot(arr_to_plot,  showmeans=False,  showmedians=True)
        # fig.show()
        # exit(9)
        plt.savefig('algo' + '_' + part_name + '_' + ptype + '_' + stat_type + '.png', dpi=None)
        plt.close(fig)

def prot_protein(df, ptype, part_name):
    # proteins = df.protein.unique().tolist()
    for stat_type in subtypes:
        fig = set_figure(part_name + " " + ptype + " affinity")
        local_df = df[["NMI_" + stat_type, 'protein']]
        arr_to_plot = [local_df[local_df.protein == 'trp']["NMI_" + stat_type],
                       local_df[local_df.protein == 'gb1']["NMI_" + stat_type],
                       local_df[local_df.protein == 'nup']["NMI_" + stat_type],
                       local_df[local_df.protein == 'nsp']["NMI_" + stat_type]]
        lbl = ['TRP Cage', 'GB1', 'NUP116', 'NSP1']
        plt.boxplot(arr_to_plot, notch=True, sym='', labels=lbl)
        if violin:
            plt.violinplot(arr_to_plot, showmeans=False, showmedians=True)
        for i in range(len(arr_to_plot)):
            for j in range(len(arr_to_plot)):
                if i != j:
                    try:
                        if len(arr_to_plot[i]) > len(arr_to_plot[j]):
                            res = wilcoxon(arr_to_plot[i][:len(arr_to_plot[j])], arr_to_plot[j])[1]
                        else:
                            res = wilcoxon(arr_to_plot[i], arr_to_plot[j][:len(arr_to_plot[i])])[1]
                        if res > 0.0003:
                            with open('algo' + '_' + part_name + '_' + ptype + '_' + stat_type + '.txt', 'a') as f:
                                f.write(lbl[i] + " " + lbl[j] + " " + str(res) + '\n')
                    except Exception as e:
                        print(e)
        # plt.show()
        plt.savefig('prot' + '_' + part_name + '_' + ptype + '_' + stat_type + '.png', dpi=None)
        plt.close(fig)


def main():

    root, dirs, files = os.walk('./').__next__()
    good_dirs = [elem for elem in dirs if 'plot' in elem and '.csv' in elem and 'ummary' not in elem]
    df_en_tot = list()
    df_pl_tot = list()
    for curdir in good_dirs:
        new_path = os.path.join(root, curdir)
        files_pot = os.listdir(new_path)
        files_pot = [elem for elem in files_pot if 'skip' in elem and '.csv' in elem and '.png' not in elem and 'lock' not in elem]
        for protein in files_pot:
            df_en, df_pl = read_protein(os.path.join(new_path, protein))
            if len(df_en_tot) > 0:
                df_en_tot = df_en_tot.append(df_en)
            else:
                df_en_tot = df_en

            if len(df_pl_tot) > 0:
                df_pl_tot = df_pl_tot.append(df_pl)
            else:
                df_pl_tot = df_pl

    df_both = df_en_tot.append(df_pl_tot)
    if len(df_en_tot) > 0:
        plot_dataframe(df_en_tot, 'Entropic', 'Algorithms')
        prot_protein(df_en_tot, 'Entropic', 'Proteins')

    if len(df_pl_tot) > 0:
        plot_dataframe(df_pl_tot, 'Plain', 'Algorithms')
        prot_protein(df_pl_tot, 'Plain', 'Proteins')

    if len(df_both) > 0:
        plot_dataframe(df_both, '', 'Algorithms')
        prot_protein(df_both, '', 'Proteins')

    root, dirs, files = os.walk('./').__next__()
    good_dirs = [elem for elem in dirs if elem in subtypes]
    import shutil
    for dir in good_dirs:
        shutil.rmtree(dir)

    for dir in subtypes:
        os.mkdir('./' + dir)
        for file in [elem for elem in files if dir in elem]:
            shutil.move(file, './' + dir)

    df_en_tot.to_csv('./boxplot_en_dataframe.csv')
    df_pl_tot.to_csv('./boxplot_pl_dataframe.csv')

if __name__ == "__main__":
    import os
    main()

