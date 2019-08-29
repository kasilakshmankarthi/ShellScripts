#! /bin/sh
echo "Installing multiple apks"

for file in /local/mnt/workspace/kasilka/apks/*; 
do
 echo "Installing $file"
 adb install -r $file
done
