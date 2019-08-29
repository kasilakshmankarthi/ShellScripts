#! /bin/sh
echo "Looping perf"
#echo "first path" $1

#for f in *.perf
FILES=/data/logs/first/*
for f in $FILES
do
	echo "Processing $f file"
    perf report -i $f > $f.report
done