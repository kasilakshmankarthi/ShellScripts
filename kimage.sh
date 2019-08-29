#! /bin/sh
echo "Called boot/kernel to SD card"
sudo rm -Rf /media/boot/*
sleep 1
sudo cp -rf $MYDROID/u-boot/u-boot.bin /media/boot
sleep 1
sudo cp -rf $MYDROID/x-loader/MLO /media/boot
sleep 1
sudo cp -rf $MYDROID/omap/arch/arm/boot/uImage /media/boot
