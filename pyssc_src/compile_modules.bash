#!/bin/bash
if [ -z ${PYSSC_PATH} ]; then 
	echo "var is unset";
	PYSSC_PATH='.'  
else 
	echo "PYSSC is set to '$PYSSC_PATH'"; 
fi
GRAPHITE="-floop-interchange -ftree-loop-distribution -floop-strip-mine -floop-block"
CORES=`nproc`
#CFLAGS="-march=native -O2 -fno-fast-math -pipe -flto=$CORES  -mmmx -msse -msse2 -msse3 -fno-stack-protector -fno-strict-aliasing -fomit-frame-pointer -ftree-vectorize $GRAPHITE" python $PYSSC_PATH/setup.py build_ext -j$CORES --build-lib $PYSSC_PATH
CFLAGS="-march=native -Ofast -fno-fast-math -pipe -flto=$CORES -ffat-lto-objects -mmmx -msse -msse2 -msse3 -fno-stack-protector -fno-strict-aliasing -fomit-frame-pointer -ftree-vectorize $GRAPHITE" python $PYSSC_PATH/setup.py build_ext -j$CORES --build-lib $PYSSC_PATH

rm bestMap.c
rm BuildAdjacency.c
rm DataProjection.c
rm entropic_affinities.c
rm generate_full_matr.c
rm get_NMI.c
rm helper_libraries.c
rm hungarian.c
rm recover_sincos.c
rm SparseCoefRecovery.c
rm SpectralClustering.c
rm SSC_Python.c

rm -r $PYSSC_PATH/build $PYSSC_PATH/__pycache__
rm -r ./build ./__pycache__
strip $PYSSC_PATH/*.so
