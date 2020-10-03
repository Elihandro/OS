#!/bin/bash

reverse1(){
if [[ $# -gt 2 ]]
then
	echo -e "\e[1;31mВведите азвание 2 файлов\e[0m ">&2
	exit -3
 
fi

if [[ $1 == $2 ]]
then 
	
	echo -e "\e[1;31mВы ввели название одного и того же файла\e[0m ">&2
	exit -1
fi



if ! [ -f $1 ]
then
	
	echo -e "\e[1;31m Первый файл не существует\e[0m" >&2
	exit -4
fi

if ! [ -f $2 ]
then
	 
	echo -e "\e[1;31mВторой файл не существует\e[0m" >&2
	exit -4

fi


tac $1 >> $2
echo "Done"
}


