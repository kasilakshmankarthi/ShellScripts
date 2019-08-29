#! /bin/sh
echo "Writing rootfs to SD card"
cd /home/a0133015/myfs
rm -rf *
sleep 1
###cp -Rfp $MYDROID/kernel/android-2.6.29/net/ipv4/*.ko $MYDROID/out/target/product/zoom2/root
cp -Rfp $MYDROID/out/target/product/zoom2/root/* .
sleep 1
cp -Rfp $MYDROID/out/target/product/zoom2/system/ .
sleep 1
cp -Rfp $MYDROID/out/target/product/zoom2/data/ .
sleep 1
cp -Rfp ~/Logs/init.rc init.rc
sleep 1
#cp -Rfp ~/Logs/busybox ./busybox
sudo cp -Rfp ~/myfs/* /tmp/mmc2
sleep 1
sudo chmod -R 777 /tmp/mmc2/*
sleep 1
sudo cp -rf $MYDROID/bootable/bootloader/u-boot/u-boot.bin /tmp/mmc1
sleep 1
sudo cp -rf $MYDROID/bootable/bootloader/x-loader/MLO /tmp/mmc1
sleep 1
sudo cp -rf $MYDROID/kernel/android-2.6.29/arch/arm/boot/uImage /tmp/mmc1
sleep 1


