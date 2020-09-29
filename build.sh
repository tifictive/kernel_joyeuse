#!/bin/bash

export PATH=$HOME/kernel/proton-clang/bin/:$HOME/kernel/aarch64-linux-android/bin/:$HOME/kernel/arm-linux-androideabi/bin/:${PATH}
export ARCH=arm64
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-
export LD_LIBRARY_PATH=$HOME/kernel/proton-clang/lib
export DTC_EXT=$HOME/kernel/aosp-dtc/dtc

make CC=clang $@
