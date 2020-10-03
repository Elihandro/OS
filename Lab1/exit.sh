#!/bin/bash

exit1(){

if  [[ -z $1 ]]

then
	echo "Done 0"
	exit 0

elif [[ "$1" -ge 0 && "$1" -le 255 ]]
then
	echo "Done $1"
	exit "$1"
else 	
	echo "Диапазог от 0 до 255"

fi
}
