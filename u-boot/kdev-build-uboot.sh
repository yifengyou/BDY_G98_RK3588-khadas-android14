#!/bin/bash

set -xe

make distclean
make kedge2_defconfig
./make.sh

fdtdump arch/arm/dts/kedge2.dtb > kdev.dts
ls -alh kdev.dts

