#!/bin/bash


for file in `ls *.csv`; do
	# gnuplot -e "set datafile separator ','; set yr [0:0.8];  plot '$i' using 1:4 "
	# gnuplot -persist <<-EOFMarker
	gnuplot <<-EOFMarker
		set terminal png size 1920,1080 enhanced font "Helvetica,20"
		set datafile separator ','
		f(x) = a*x**2 + b*x + c
		fit f(x) '$file' using 1:6 via a,b,c
	EOFMarker
	
	res1=`head -n26 fit.log | tail -n6 | sed 'N;s/\n/\\\n/g'| sed 'N;s/\n/\\\n/g' | sed 'N;s/\n/\\\n/g'`
	rm fit.log

	gnuplot <<-EOFMarker
		set terminal png size 1920,1080 enhanced font "Helvetica,20"
		set datafile separator ','
		f(x) = a*x**2 + b*x + c
		fit f(x) '$file' using 2:6 via a,b,c
	EOFMarker

	res2=`head -n26 fit.log | tail -n6 | sed 'N;s/\n/\\\n/g'| sed 'N;s/\n/\\\n/g' | sed 'N;s/\n/\\\n/g'` 
	rm fit.log

	gnuplot <<-EOFMarker
		set terminal png size 1920,1080 enhanced font "Helvetica,20"
		set datafile separator ','
		set xlabel "Knn"
		set ylabel "NMI"
		set mytics 2
		set mxtics 2
		set grid mytics lc rgb "#bbbbbb" lw 1 lt 0
		set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
		set grid xtics lc rgb "#bbbbbb" lw 1 lt 0
		set grid mxtics lc rgb "#bbbbbb" lw 1 lt 0
		set yr [0:0.8]
		f(x) = a*x**2 + b*x + c
		fit f(x) '$file' using 1:6 via a,b,c
		set output 'knn_$file.png'
		set label 1 at 0.0, 0.75
		set label 1 "$res1" tc lt -1
		plot '$file' using 1:6 lw 2 lc rgb 'blue', f(x) lw 4 lc rgb 'red'
		set output 'pps_$file.png'
		fit f(x) '$file' using 2:6 via a,b,c
		set xlabel "sigma/perplexity"
		set ylabel "NMI"
		set label 1 at 0.0, 0.75
		set label 1 "$res2" tc lt -1
		plot '$file' using 2:6 lw 2 lc rgb 'blue', f(x) lw 4 lc rgb 'red'
		set output '3d_$file.png'
		unset label 1
		set autoscale y
		set zrange [:0.7]
		set yrange [0:]
		set yrange [0:]
		set ticslevel 0
		set dgrid3d 30,30,8
		set pm3d
		set palette model HSV
		set palette rgb 3,2,2
		set hidden3d
		set xlabel "Knn"
		set ylabel "sigma/perplexity"
		set zlabel "NMI"
		splot '$file' u 1:2:6 with lines
	EOFMarker
	# exit
	rm fit.log
	# exit
done