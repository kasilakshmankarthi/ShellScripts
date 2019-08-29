#! /bin/sh
echo "Looping perf"
echo "first argument sleep:" $1
num=1
while [ $num -le 110 ]
do 
    #echo sample$num 
	#-p $(pidof com.primatelabs.geekbench3)
    perf record -a -o sample$num.perf sleep $1
	num=`expr $num + 1`
done
