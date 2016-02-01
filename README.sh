#!/bin/bash
#
# Use this code to compile these tests with a cross compiling toolchain.
# You have to set both variables.
#

SYSROOT=${SYSROOT:-}
CC=${CC:-}
# rm -rf CMakeCache* CMakeFiles
cmake \
        -DCMAKE_SYSTEM_NAME=Android \
        -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
        -DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
        -DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
        -DCMAKE_FIND_ROOT_PATH_MODE_PACKAGE=ONLY \
        -DCMAKE_SYSROOT=$SYSROOT \
        -DCMAKE_C_COMPILER=$CC \
        .
make
