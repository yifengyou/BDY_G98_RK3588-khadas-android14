#!/bin/bash
#



chmod +x /builder/dc-a588.git/tools/afptool
chmod +x /builder/dc-a588.git/tools/rkImageMaker
cd /builder/dc-a588.git/output-updatable-image/RKDevTool/rockdev/image/
/builder/dc-a588.git/tools/afptool -pack . temp.img
/builder/dc-a588.git/tools/rkImageMaker -RK3588 MiniLoaderAll.bin temp.img update.img -os_type:androidos
find . -type f ! -name "update.img" -exec rm -f {} \;

