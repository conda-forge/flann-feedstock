#!/bin/bash

# cannot build flann from within the source directory
mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
	 -DCMAKE_INSTALL_PREFIX=$PREFIX \
	 -DBUILD_MATLAB_BINDINGS:BOOL=OFF \
	 -DBUILD_PYTHON_BINDINGS:BOOL=OFF \
	 -DBUILD_EXAMPLES:BOOL=OFF \
	 -DBUILD_DOC:BOOL=OFF

make
make install
