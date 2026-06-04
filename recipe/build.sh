#!/bin/bash

mkdir -p build
cd build
export ISISROOT=$(pwd) # very important for the build
# ASP: do NOT override PREFIX. conda-build sets $PREFIX to the host staging
# dir (_h_env) that gets PACKAGED. The old `export PREFIX=$CONDA_PREFIX`
# redirected `ninja install` to the build env, leaving the packaged host
# prefix EMPTY (a 14 KB isis package). Use conda-build's $PREFIX for install,
# and $PREFIX (host) for include dirs.
echo PREFIX=$PREFIX
cmake                                                 \
    ../isis                                           \
    -GNinja                                           \
    -DJP2KFLAG=OFF                                    \
    -Dpybindings=OFF                                  \
    -DbuildDocs=OFF                                   \
    -DbuildTests=OFF                                  \
    -DBUILD_CORE_TESTS=OFF                            \
    -DSENSOR_UTILITIES_BUILD_TESTS=OFF                \
    -DCMAKE_BUILD_TYPE=Release                        \
    -DNN_INCLUDE_DIR=$PREFIX/include                  \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                  \
    -DOPENCV_INCLUDE_DIR:PATH=$PREFIX/include/opencv4 \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=15.0                \
    -DCMAKE_CXX_FLAGS="-I$PREFIX/include -Wno-error -Wno-deprecated-builtins"
ninja install

