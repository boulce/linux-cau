#!/bin/sh

if [ -z $1 ] ||  [ $1 -le 0 ]
then
	echo "first parameter must be positive integer"
	exit 1
fi

if [ -z $2 ] || [ $2 -le 0 ]
then
        echo "second parameter must be positive integer"
        exit 1
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		printf "%d*%d=%d\t" $i $j $mul
	done
	echo ""
done
exit 0
