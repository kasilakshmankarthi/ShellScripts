#!/bin/bash
TARGET=$1
PATH_BASEDIR=$2
echo "Flashing for target" $TARGET
echo "Path base dir" $PATH_BASEDIR
LOCATION="/local/mnt/workspace/kasilka/builds/$PATH_BASEDIR"
echo "Resolved Locattion" $LOCATION

FASTBOOT="sudo ${LOCATION}/out/host/linux-x86/bin/fastboot"
OUTDIR="${LOCATION}/out/target/product/${TARGET}"
${FASTBOOT} flash boot ${OUTDIR}/boot.img
${FASTBOOT} flash system ${OUTDIR}/system.img
${FASTBOOT} flash userdata ${OUTDIR}/userdata.img
${FASTBOOT} flash persist ${OUTDIR}/persist.img
${FASTBOOT} reboot
