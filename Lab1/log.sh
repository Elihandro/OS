#!/bin/bash


log1(){


if [[ $# -gt 0 ]] && ! [[ "$1" = "interactive" ]]
then
	echo -e "\e[1;31mЗдесь аргументы не нужны\e[0m" >&2 
	exit -3

fi



if ! [ -e "/var/log/anaconda/X.log" ]
then
	 
	echo -e "\e[1;31mЛога не существует\e[0m" >&2 
	exit -4

fi

echo1=$(cat /var/log/anaconda/X.log | awk '{if ($3 == "(WW)" && ($1 == "[")) print $0}')

echo2=$(cat /var/log/anaconda/X.log | awk '{if ($3 == "(II)" && ($1 == "[")) print $0}')

echo -e "${echo1//("WW")/"  \e[1;33mWarning  \e[0m"}"
echo -e "${echo2//("II")/"  \e[1;36mInformation  \e[0m"}"

}
