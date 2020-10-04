#!/bin/bash


strlen1(){
if [[ $# -gt 1 ]]
then
	echo -e "\e[1;31m Введите 1 слово\e[0m" >&2
	exit -3
fi	

word=$1
echo -e "\e[1;31mОтвет равен\e[0m"
echo "${#word}"
}
