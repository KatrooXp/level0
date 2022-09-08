#!/bin/bash

if [[ $# > 1 ]]
then echo "only one argument is possible"
exit
fi 

if [[ $1 != ${1//*[^.0-9]/} ]]  
then echo "only numbers are possible"
exit
fi

if (( $1 % 2 != 0 ))
then echo "Odd"
else echo "Even"
fi
