 #! /bin/sh
 echo "Preparing for oprofile"
 cd $MYDROID 
 source build/envsetup.sh 
 setpaths 
 export ADBHOST=128.247.75.36
 cd $MYDROID/external/oprofile/ 
