m! /bin/sh
echo "Looping operation"
num=1

while [ $num -lt 50 ]
do
dumpsys SurfaceFlinger >> log.txt
done
