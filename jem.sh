#! /bin/sh
echo "Setting env vars"
cd $MYDROID
export PLATFORM=jem
. build/envsetup.sh
setpaths
lunch


cd ~/tate/mydroid
export PLATFORM=tate
. build/envsetup.sh
setpaths
lunch