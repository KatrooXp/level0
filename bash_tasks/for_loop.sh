#!/bin/bash

for i in $@
do
	if [[ $i != ${i//*[^.0-9]/} ]]; then 
		echo "$i is not a digit"
		exit 0
	fi	

done	

for i in $@

do sum=$(expr $sum + $i)

done

echo "the sum is " $sum

echo "there are " $# " agruments"

echo "the average is " $(expr $sum / $#)




