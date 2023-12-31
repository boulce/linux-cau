#!/bin/sh

if ! echo $1 |  grep -Eq "^[0-9]+$" ; 
then
	echo "you should enter only numbers on first parameter"
	exit 1
fi

if ! echo $2 |  grep -Eq "^[0-9]+$" ;
then
        echo "you should enter only numbers on second parameter"
        exit 1
fi


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
