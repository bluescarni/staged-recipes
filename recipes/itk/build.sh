#!/bin/bash

mkdir build && cd build

cmake \
	-DBUILD_TESTING=no \
	-DITK_USE_SYSTEM_EXPAT=yes \
	-DITK_USE_SYSTEM_HDF5=yes \
	-DITK_USE_SYSTEM_JPEG=yes \
	-DITK_USE_SYSTEM_PNG=yes \
	-DITK_USE_SYSTEM_TIFF=yes \
	-DITK_USE_SYSTEM_ZLIB=yes \
	-DBUILD_SHARED_LIBS=yes \
	-DCMAKE_INSTALL_PREFIX=$PREFIX \
	..

make -j2 install
