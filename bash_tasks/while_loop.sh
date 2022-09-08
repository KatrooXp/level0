#!/bin/bash

while read input;
	do
		
		if [[ $input =~ "ls" || $input = "pwd" ]]; then
	
			$input

		elif [[ $input = "hi" ]]; then
		
			echo "Hello $USER" 
		
		elif [[ $input = "exit" ]]; then 
		
			exit 0
			
		else 
			echo "not valid input, please enter either ls | pwd | hi | exit"

		fi

	done

