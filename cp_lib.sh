#! /bin/sh
echo "Writing libs to SD card"
export MYDROID=/home/a0133015/mydroid
export dest2=/media/rootfs
export dest1=/media/boot
#export dest2=/tmp/mmc2
#export dest1=/tmp/mmc1
sleep 1
echo "Writing init.rc"
cp ~/Patches/init.rc $dest2
echo "Writing lib*.so"
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libandroid_runtime.so $dest2/system/lib
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libbrowser_jni.so $dest2/system/lib
sleep 1
echo "Writing libskia.so"
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libskia.so $dest2/system/lib
sleep 1
echo "Writing libskiagl.so"
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libskiagl.so $dest2/system/lib
sleep 1
echo "Writing libwebcore.so"
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libwebcore.so $dest2/system/lib
cp -Rfp $MYDROID/out/target/product/blaze/system/lib/libbrowser_jni.so $dest2/system/lib
echo "Writing Browser.apk"
cp -Rfp $MYDROID/out/target/product/blaze/system/app/Browser.apk $dest2/system/app
cp -Rfp $MYDROID/out/target/product/blaze/system/app/PicturePlayer.apk $dest2/system/app
cp -Rfp $MYDROID/out/target/product/blaze/system/app/FlipPlayer.apk $dest2/system/app
echo "Writing framework jar files"
cp -Rfp $MYDROID/out/target/product/blaze/system/framework/*  $dest2/system/framework
cp -Rfp /home/a0133015/Patches/ARGB8888_Images/pic1.raw $dest2/tmp
cp -Rfp /home/a0133015/Patches/ARGB8888_Images/pic2.raw $dest2/tmp
echo "removing timeline_log.txt"
rm $dest1/timeline_log.txt
echo "Unmounting"
#sudo umount /media/rootfs
#sudo umount /media/boot

