#! /bin/sh
echo "Build WLAN Driver"
cd $MYDROID/hardware/ti/wlan/mac80211/compat
export KLIB=$MYDROID/omap
export KLIB_BUILD=$MYDROID/omap
make ARCH=arm

echo "Copying the WLAN driver files to out directory"
cd $MYDROID/out/target/product/blaze_tablet
mkdir system/lib/modules
cp $MYDROID/hardware/ti/wlan/mac80211/compat/compat/compat.ko system/lib/modules/
cp $MYDROID/hardware/ti/wlan/mac80211/compat/net/wireless/cfg80211.ko system/lib/modules/
cp $MYDROID/hardware/ti/wlan/mac80211/compat/net/mac80211/mac80211.ko system/lib/modules/
cp $MYDROID/hardware/ti/wlan/mac80211/compat/drivers/net/wireless/wl12xx/wl12xx.ko system/lib/modules/
cp $MYDROID/hardware/ti/wlan/mac80211/compat/drivers/net/wireless/wl12xx/wl12xx_sdio.ko system/lib/modules/


echo "Copying the WLAN bin files to out directory"
cd $MYDROID/out/target/product/blaze_tablet
mkdir system/etc/firmware
mkdir system/etc/firmware/ti-connectivity
cp ~/daily_build/ICS/db107/myfs_BR_L4AI.x_44XX_T2_DB107/system/etc/firmware/ti-connectivity/wl1271-nvs.bin system/etc/firmware/ti-connectivity/
cp ~/daily_build/ICS/db107/myfs_BR_L4AI.x_44XX_T2_DB107/system/etc/firmware/ti-connectivity/wl128x-fw-multirole-plt.bin system/etc/firmware/ti-connectivity/
cp ~/daily_build/ICS/db107/myfs_BR_L4AI.x_44XX_T2_DB107/system/etc/firmware/ti-connectivity/wl128x-fw-multirole-roc.bin system/etc/firmware/ti-connectivity/

echo "Copying the Ducati binaries"
cp ~/daily_build/ICS/db107/myfs_BR_L4AI.x_44XX_T2_DB107/system/vendor/firmware/ducati-m3.bin $MYDROID/out/target/product/blaze_tablet/system/vendor/firmware

cd ~/hc_kernel/emmc_27.x_Honeycomb_DailyBuild_mr2_315
echo "Copying the kernel zImage"
cp $MYDROID/kernel/android-2.6.35/arch/arm/boot/zImage .
./umulti.sh
echo "Copying the Android Image Files"
cp $MYDROID/out/target/product/blaze_tablet/*.img .