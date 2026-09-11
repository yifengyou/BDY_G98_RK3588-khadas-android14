#!/bin/bash

set -x

cd kernel-6.1
#make clean
make CROSS_COMPILE=aarch64-linux-gnu- LLVM=1 LLVM_IAS=1 ARCH=arm64 kedge2_defconfig
make CROSS_COMPILE=aarch64-linux-gnu- LLVM=1 LLVM_IAS=1 ARCH=arm64 rk3588s-khadas-edge2.img -j`nproc`



