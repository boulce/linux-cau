#!/bin/sh

if [ -z $1 ]
then
       echo "first parameter is empty"
       exit 0
fi

if [ $1 -le 0  ]
then
	echo "first parameter is not positive number"
	exit 0
fi

if [ -z $2 ]
then
	echo "second parameter is empty"
	exit 0
fi

if [ $2 -le 0 ]
then
	echo "second parameter is not positive number"
	exit 0
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		printf "%d*%d = %d \t" $i $j $mul
	done
	echo ""
done
exit 0
