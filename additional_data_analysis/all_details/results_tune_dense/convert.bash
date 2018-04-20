#!/bin/bash

libreoffice --headless --convert-to xlsx ./*.ods
for j in $(ls -1 *.xlsx | sed -e 's/\..*$//'); do 
    echo $j"_plot_dir.csv"
    xlsx2csv -s 0 $j.xlsx $j"_plot_dir.csv" 
    cp plot.bash $j"_plot_dir.csv" 
    cd $j"_plot_dir.csv" 
    sleep 1
    ./plot.bash & 
    cd .. 
done
