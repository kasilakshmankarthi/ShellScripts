#!/bin/bash
adb push /net/stepanm-linux/local/mnt/workspace/ethtool /data/ethtool
adb shell insmod /system/lib/modules/eeprom_93cx6.ko
#adb shell insmod /system/lib/modules/mii.ko
adb shell insmod /system/lib/modules/ks8851.ko
adb shell chmod 777 /data/ethtool
adb shell /data/ethtool -E eth0 magic 0x8851 offset 7 value 0x00
adb shell /data/ethtool -E eth0 magic 0x8851 offset 6 value 0xA0
adb shell /data/ethtool -E eth0 magic 0x8851 offset 5 value 0xC6
adb shell /data/ethtool -E eth0 magic 0x8851 offset 4 value 0xE8
adb shell /data/ethtool -E eth0 magic 0x8851 offset 3 value 0x4B
adb shell /data/ethtool -E eth0 magic 0x8851 offset 2 value 0xD4
adb shell netcfg eth0 dhcp
adb shell /system/bin/setprop net.dns1 10.228.128.15
adb shell /system/bin/setprop net.dns2 10.228.128.16
adb shell route add default dev eth0
