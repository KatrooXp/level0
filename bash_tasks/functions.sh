#!/bin/bash

mult () {

	for i in $@
		do
			arg=$(($i * $i))
	echo $arg	
		done
	 
}


	for i in $@
		do
			fin=$(mult $i)
			result=$(expr $fin + 1)
			echo $result
		done




