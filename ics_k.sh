#! /bin/sh

#boot.img
cd ~/ics
unlink ~/ics/device/ti/blaze_tablet/boot/zImage
cp ~/ics/omap/arch/arm/boot/zImage ~/ics/device/ti/blaze_tablet/boot/zImage
rm ~/ics/out/target/product/blaze_tablet/boot.img
rm ~/ics/out/target/product/blaze_tablet/boot/zImage
rm ~/ics/out/target/product/blaze_tablet/kernel

#wifi



make -j4


rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libusc_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libglslcompiler_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libIMGegl_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libpvr2d_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libsrv_um_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libsrv_init_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libPVRScopeServices_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/hw/gralloc.omap4460.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/pvrsrvinit
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/pvrsrvinit_SGX540_120
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/pvrsrvctl
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/sgx_init_test_SGX540_120
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/services_test_SGX540_120
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/sgx_flip_test_SGX540_120
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/sgx_render_flip_test_SGX540_120
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/testwrap
rm ~/ics/out/target/product/blaze_tablet/data/app/gles1test1.apk
rm ~/ics/out/target/product/blaze_tablet/data/app/gles2test1.apk
rm ~/ics/out/target/product/blaze_tablet/data/app/eglinfo.apk
rm ~/ics/out/target/product/blaze_tablet/data/app/launcher.apk
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/hal_client_test
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/hal_server_test
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/framebuffer_test
rm ~/ics/out/target/product/blaze_tablet/system/vendor/bin/texture_benchmark
rm ~/ics/out/target/product/blaze_tablet/system/etc/powervr.ini
