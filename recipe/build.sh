#!/bin/sh
mkdir build
cd build

export CONDA_PREFIX=$(dirname $(dirname $(which cmake)))
cmake \
	-S "${SRC_DIR}" \
	-DCMAKE_PREFIX_PATH="${PREFIX}" \
	-DCMAKE_INSTALL_PATH="${PREFIX}" \
	-DCMAKE_IGNORE_PREFIX_PATH="/usr" \
	-DCMAKE_LIBRARY_PATH="${CONDA_PREFIX}/x86_64-conda-linux-gnu/sysroot/usr/lib64" \
	-DCMAKE_INCLUDE_PATH="${CONDA_PREFIX}/x86_64-conda-linux-gnu/sysroot/usr/include"

#make -j`nproc`
make

echo ================== $(which cmake)
