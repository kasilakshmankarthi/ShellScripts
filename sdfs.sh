#! /bin/sh
 echo "Writing rootfs to SD card"
 cd ~/myfs
 rm -rf *
 sleep 1
 #cp -Rfp $MYDROID/kernel/android-2.6.29/drivers/usb/gadget/*.ko $MYDROID/out/target/product/zoom2/root
 sleep 1
 cp -Rfp $MYDROID/out/target/product/zoom2/root/* .
 sleep 1
 cp -Rfp $MYDROID/out/target/product/zoom2/system/ .
 sleep 1
 cp -Rfp $MYDROID/out/target/product/zoom2/data/ .
 sleep 1
 mv init.rc init.rc.bak
 sleep 1
 cp -Rfp $MYDROID/device/ti/zoom2/omapzoom2-mmc.rc init.rc
 ##cp -Rfp ~/Logs/init.rc init.rc
 sleep 1
 
 sudo rm -Rf /media/rootfs/*  
 sleep 1
 sudo cp -Rfp * /media/rootfs
 sleep 1
 sudo chmod 777 -R /media/rootfs/*
 sleep 1
 
# echo "Calling boot/kernel to SD card"
###sh /home/a0133015/Shell\ Scripts/kimage.sh
 
echo "Unmounting"
ls /media/rootfs
ls /media/boot
#sudo umount /media/rootfs
#sudo umount /media/boot

