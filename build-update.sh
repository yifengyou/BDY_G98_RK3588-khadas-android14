#!/bin/bash

set -x
WORKDIR=`pwd`
PACK_TOOL_DIR="${WORKDIR}/RKTools/linux/Linux_Pack_Firmware/"
OUTPUT_DIR="${WORKDIR}/rockdev/"

# env prep
mkdir -p ${OUTPUT_DIR}
chmod +x ${WORKDIR}/RKTools/linux/Linux_Pack_Firmware/rockdev/afptool
chmod +x ${WORKDIR}/RKTools/linux/Linux_Pack_Firmware/rockdev/rkImageMaker

# gen image
mkdir -p ${PACK_TOOL_DIR}/rockdev/Image/
cd ${PACK_TOOL_DIR}/rockdev/Image/
if [ ! -f MiniLoaderAll.bin ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/MiniLoaderAll.bin
fi
if [ ! -f uboot.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/uboot.img
fi
if [ ! -f misc.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/misc.img
fi
if [ ! -f dtbo.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/dtbo.img
fi
if [ ! -f vbmeta.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/vbmeta.img
fi
if [ ! -f boot.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/boot.img
fi
if [ ! -f recovery.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/recovery.img
fi
if [ ! -f baseparameter.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/baseparameter.img
fi
if [ ! -f super.img ] ; then
  wget -c https://github.com/yifengyou/BDY_G98_RK3588-khadas-android14/releases/download/g98_android14_artifacts/super.img
fi
ls -alh *.img *.bin

# pack image
echo "Make update.img"
cd ${PACK_TOOL_DIR}/rockdev && ./mkupdate.sh rk3588 Image

if [ $? -eq 0 ]; then
    echo "Make update image ok!"
else
    echo "Make update image failed!"
    exit 1
fi

mv ${PACK_TOOL_DIR}/rockdev/update.img ${OUTPUT_DIR}
ls -alh ${OUTPUT_DIR}
