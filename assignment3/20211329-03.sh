for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=`expr $i \* $j`
		printf "%d*%d = %d \t" $i $j $mul
	done
	echo ""
done
