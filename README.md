# BDY_G98_RK3588-khadas-android14

适配中...


## 相关地址

* <https://docs.khadas.com/products/sbc/edge2/development/android/download-android-source-code>

---

## 📊 RK3588 分区表

```shell
FIRMWARE_VER: 14.0
MACHINE_MODEL: Edge2
MACHINE_ID: 007
MANUFACTURER: Khadas
MAGIC: 0x5041524B
ATAG: 0x00200800
MACHINE: kedge2
CHECK_MASK: 0x80
PWR_HLD: 0,0,A,0,1
TYPE: GPT
CMDLINE:mtdparts=rk29xxnand:0x00002000@0x00002000(security),0x00002000@0x00004000(uboot),0x00002000@0x00006000(trust),0x00002000@0x00008000(misc),0x00002000@0x0000a000(dtbo),0x00000800@0x0000c000(vbmeta),0x00020000@0x0000c800(boot),0x00030000@0x0002c800(recovery),0x00032000@0x0005c800(custom),0x000c0000@0x0008e800(backup),0x000c0000@0x0014e800(cache),0x00020000@0x0020e800(metadata),0x00000400@0x0022e800(frp),0x00000800@0x0022ec00(baseparameter),0x00614000@0x0022f400(super),-@0x00843400(userdata:grow)
```

| 分区名称 | 起始偏移 (Blocks) | 大小 (Blocks) | 大小 (Bytes) | 大小 (MiB) |
| :--- | :--- | :--- | :--- | :--- |
| security | 0x00002000 | 0x00002000 | 8,388,608 | 8 |
| uboot | 0x00004000 | 0x00002000 | 8,388,608 | 8 |
| trust | 0x00006000 | 0x00002000 | 8,388,608 | 8 |
| misc | 0x00008000 | 0x00002000 | 8,388,608 | 8 |
| dtbo | 0x0000a000 | 0x00002000 | 8,388,608 | 8 |
| vbmeta | 0x0000c000 | 0x00000800 | 2,097,152 | 2 |
| boot | 0x0000c800 | 0x00020000 | 134,217,728 | 128 |
| recovery | 0x0002c800 | 0x00030000 | 201,326,592 | 192 |
| custom | 0x0005c800 | 0x00032000 | 209,715,200 | 200 |
| backup | 0x0008e800 | 0x000c0000 | 788,529,152 | 752 |
| cache | 0x0014e800 | 0x000c0000 | 788,529,152 | 752 |
| metadata | 0x0020e800 | 0x00020000 | 134,217,728 | 128 |
| frp | 0x0022e800 | 0x00000400 | 1,048,576 | 1 |
| baseparameter | 0x0022ec00 | 0x00000800 | 2,097,152 | 2 |
| super | 0x0022f400 | 0x00614000 | 6,375,342,080 | 6,080 |
| userdata | 0x00843400 | - | - | - (grow) |

---

## 免责申明

- **按原样提供**：镜像不作任何保证，使用风险自负
- **无官方关联**：主板厂家和瑞星微无任何关联、无任何商业关联
- **安全提示**：请及时更新补丁、修改默认密码、配置防火墙