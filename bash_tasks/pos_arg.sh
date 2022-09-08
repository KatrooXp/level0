#!/bin/bash

counter=0

for i in $@; do

	counter=$((counter+1))
	
	echo "Arg $counter:" $i;

done

arg1=$1
counter=0
last=$#
result="" 

while [[ $1 ]]

do 
	counter=$((counter+1))
#	echo "counter=$counter"
	if [[ $counter -lt $last ]] 
	then	
		sum=$(expr $1 + $2)
		shift 
#		echo "$sum"
		result="$result $sum"

	else
#		echo "arg1=$arg1"
		sum=$(expr $1 + $arg1)
		shift
#		echo "$sum"
		result="$result $sum"
	fi

done

result="${result:1}"
echo "$result"

#for a in $@; do

#	sum=$(expr $1 + $2)
#	shift 
#	echo $sum;

#done


