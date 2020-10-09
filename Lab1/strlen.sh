#!/bin/bash


strlen1(){
if [ -z $1 ] 
then
	
	echo -e "\e[1;31mВведите строку\e[0m ">&2
	exit -2
fi
	


echo -e "\e[1;31mОтвет равен\e[0m"

if [[ $# -eq 1 ]]
then
	echo ${#1}
else
	
	echo -e "\e[1;31mВведите одно слово\e[0m ">&2
	exit -2


fi
}
