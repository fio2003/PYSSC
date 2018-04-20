#!/usr/bin/env python
from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import os
try:
    good_path = os.environ['PYSSC_PATH']
except:
    good_path = './'
# good_path = './'

extensions = [
    Extension("*", [good_path + "*.pyx"],
        include_dirs = [...],
        libraries = [...],
        library_dirs = [...])
]

setup(
  #ext_modules = cythonize([good_path + "*.pyx"], nthreads=4)
  ext_modules = cythonize([good_path + "*.pyx"])
)
