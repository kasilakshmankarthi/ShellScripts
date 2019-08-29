#! /bin/sh

cd ~/ics/img-ddk-linux-android/eurasia/eurasiacon/binary2_544sc_omap4430_android_release/target
mkdir ~/Patches/ddk
mkdir ~/Patches/ddk_orig
cp *.dbg ~/Patches/ddk
cp *.so ~/Patches/ddk/ddk_orig

exercise=~/Patches/ddk
for mFName in $exercise/*.log; do
  mPref=${mFName%.dbg}
  mv ${mFName} ${mPref}.so
done
