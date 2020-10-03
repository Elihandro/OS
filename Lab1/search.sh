#!bin/bash

search1(){

if [[ $# -gt 2]]
then 
	echo -e "\e[1;31mВведите 2 аргумета: дерикторию и строку\e[0m" >&2
	exit -3

if  grep -r $2 $1

then 
	echo -e "\e[1;31m^Найдено^\e[0m" 

else
	echo -e "\e[1;31mНе найдено\e[0m" 
	 

fi
}
