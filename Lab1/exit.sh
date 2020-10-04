#!/bin/bash

exit1(){
if [[ $# -gt 1 ]]
then 
	echo -e "\e[1;31mВведите код возврата(1 или 0 цифр)\e[0m ">&2
	exit -3
fi



if  [[ -z $1 ]] #-z - строка пуста

then
	echo "Done 0"
	exit 0

elif [[ "$1" -ge 0 && "$1" -le 255 ]]
then
	echo "Done $1"
	exit "$1"
else 	
	echo "Диапазон от 0 до 255"

fi
}
