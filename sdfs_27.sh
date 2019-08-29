#! /bin/sh
echo "Writing rootfs to SD card"
export MYDROID=/home/a0133015local/mydroid
export dest2=/media/rootfs
###export dest2=/media/09dbb802-3d23-40ba-8d2e-58acea26ccd1
export dest1=/media/boot
#export dest2=/tmp/mmc2
#export dest1=/tmp/mmc1

#####http://omapzoom.org/wiki/SD_Configuration#####
#mkdir /tmp/mmc1
#mkdir /tmp/mmc2
#sudo mount /dev/sdb1 /tmp/mmc1
#sudo mount /dev/sdb2 /tmp/mmc2

cd ~/myfs
rm -rf *
mkdir bin
sleep 1
cp -Rfp $MYDROID/omap/drivers/misc/ti-st/*.ko $MYDROID/out/target/product/blaze/root
sleep 1
cp -Rfp $MYDROID/out/target/product/blaze/root/* .
sleep 1
cp -Rfp $MYDROID/out/target/product/blaze/system/ .
sleep 1
cp -Rfp $MYDROID/out/target/product/blaze/data/ .
sleep 1
#cp -Rfp $MYDROID/device/ti/blaze/init.omap4sdp.rc init.rc
sleep 1
cp ~/Patches/init.rc .
cp ~/Patches/firmware.bin ./system/etc/wifi
cp ~/Patches/busybox ./bin/busybox
sleep 1
cp $MYDROID/hardware/ti/wlan/wl1283/platforms/os/linux/tiwlan_drv.ko ./system/etc/wifi
sleep 1
### To change default display resolution value to 240 do:
#echo “ro.sf.lcd_density=240” >> system/build.prop
#echo setprop service.adb.tcp.port 5555 >> init.rc
sleep 1 
sudo rm -Rf $dest2/*  
sleep 1
sudo cp -Rfp * $dest2
sleep 1
sudo chmod 777 -R $dest2/*
sleep 1

echo "Called boot/kernel to SD card"
#sudo rm -Rf $dest1/*
sleep 1
#sudo cp -rf $MYDROID/u-boot/u-boot.bin $dest1
sleep 1
#sudo cp -rf $MYDROID/omap-mshield-lite/MLO $dest1
sleep 1
#sudo cp -rf $MYDROID/omap/arch/arm/boot/uImage $dest1
 
echo "Unmounting"
ls $dest2
ls $dest1
#sudo umount /media/rootfs
#sudo umount /media/boot

