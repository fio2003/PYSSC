results.db - sqlite3 db that contains all NMI results (min, max, med, avg) obtained durring batch runs (all important info about each run).

Run convert.bash to:
 convert ods to xls 
 convert each sheet in xls into separate csv file.
 plot data(knn and pp/sigma) with regression info and trend line.
 

Needs ods files and plot.bash script, all other files and directories should be created automatically.
Although everything should work, I leave all files as they appear in my working directory.

Run compute_segment_nmi.bash to:
 walk directories created by previous script
 compute max nmi for each three ranges: 0-1/3, 1/3-2/3, 2/3-1 for knn and pp/sigma
 store all results in segment_result.csv
 
Needs csv files in directories created by conver.bash.

Run boxplotter.py to:
 plot boxplots (usefull for normal distribution) with violin plots (show you distribution shape).
 apply wilcoxon test for each combination and store only there is a slight chance of similarity
 
Needs csv files in directories created by conver.bash.
As you may see many of the disributions are not normal, so wilcoxon test is not applicable.
This is the main reason those numbers were not used in the article, but left here for curious people.

Summary.ods contains max nmi for different algorithms and plain|entropic affinities