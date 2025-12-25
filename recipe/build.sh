#!/bin/bash

mkdir -p build
cd build
export ISISROOT=$(pwd) # very important
export PREFIX=$CONDA_PREFIX
echo PREFIX=$PREFIX
cmake                                                 \
    ../isis                                           \
    -GNinja                                           \
    -DJP2KFLAG=OFF                                    \
    -Dpybindings=OFF                                  \
    -DbuildDocs=OFF                                   \
    -DbuildTests=OFF                                  \
    -DCMAKE_BUILD_TYPE=Release                        \
    -DNN_INCLUDE_DIR=$CONDA_PREFIX/include            \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                  \
    -DOPENCV_INCLUDE_DIR:PATH=$PREFIX/include/opencv4 \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=15.0                \
    -DCMAKE_CXX_FLAGS="-I$CONDA_PREFIX/include -Wno-error -Wno-deprecated-builtins"
ninja install

