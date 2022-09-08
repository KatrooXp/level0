#!/bin/bash

for i in $@
do 
	if [[ $i == ${i//*[^.0-9]/} ]]; then
		sum=$(expr $sum + $i)
	else 
		echo "$i is not a digit"
	fi
done

echo "the sum is " $sum

echo "there are " $# " agruments"

echo "the average is " $(expr $sum / $#)




