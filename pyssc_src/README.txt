Although I have many execution scripts, they all depend on the sources that cannot be accessed from your coputer.
Please check next line. Please note, you need scheduler running (!) - posted in the different git. Make sure that port 1987 is open.
Example : ./main.py 2510 10 -v 2 -K 60  -b generate -k 50 -A 3  -d trp-cage_sparse -y 10

Toy problem used to check SC, SSC and others to separate two subspaces - has nothing to do with nmi, database, etc. Has to be called separatly - you need to code your own driver to work with it. Currently it is not used, but left for those special moments.

Many other files were removed to reduce confusion, but if you think that you need some - please send me a message and I'll post it.

compile_modules.py is used to translate .pyx to .c and then compile to .so modules. It contains agressive compile flags that I use on my Gentoo and it worked for me, but will likely fail for you. Use either safer flags or do not build .so modules at all. Please note that all article computations were performed without them to ensure the most correct results and avoid corner cases that appear on big sets. This is the very last thing you want to do.

All .pyx files are just soft links to .py files and can be removed if you do not compile .so modules.
