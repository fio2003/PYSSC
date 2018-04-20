#!/bin/bash


for file in `ls -d  *.csv/*.csv | grep -vE 'png|bash|Summary' | grep -IE '_en_|_pl_'`; do 
	./segment_nmi.py $file ./segment_result.csv
done