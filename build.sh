#!/bin/bash

COMMON_PATH="$(cd "$(dirname "$0")/../" >/dev/null 2>&1 && pwd)"
KERNEL_PATH="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"

export PATH=$COMMON_PATH/proton-clang/bin/:$COMMON_PATH/aarch64-linux-android/bin/:$COMMON_PATH/arm-linux-androideabi/bin/:${PATH}
export ARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
export LD_LIBRARY_PATH=$COMMON_PATH/proton-clang/lib

cd $KERNEL_PATH
make CC=clang $@
