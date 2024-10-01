#!/bin/bash
mkdir build
cd build

cmake -S ${SRC_DIR} -DCMAKE_PREFIX_PATH=${PREFIX} -DCMAKE_INSTALL_PATH=${PREFIX}

make -j`nproc`

echo ================== $(which cmake)


