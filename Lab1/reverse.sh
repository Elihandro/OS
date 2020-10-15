#!/bin/bash

reverse1(){


if [[ $# -gt 2 ]]
then
	echo -e "\e[1;31mВведите название 2 файлов\e[0m ">&2
	exit -3 
fi


if [[ -d $1 ]] 
then
	echo -e "\e[1;31m1 это директория\e[0m ">&2
	exit -4
fi



if [[ -d $2 ]] 
then

	echo -e "\e[1;31m2 это директория\e[0m ">&2
	exit -4

fi


if ! [[ -f $1 ]]
then
	
	echo -e "\e[1;31m Первый файл не существует\e[0m" >&2
	exit -2
fi


if ! ( touch $2 ) 2>/dev/null
then 	
	echo -e "\e[1;31m Здесь нельзя создать файл\e[0m" >&2
	exit -6
fi

if ! [[ -f $2 ]]
then
	 touch $2
fi

if ! [[ -r $1 ]]
then	
	echo -e "\e[1;31m1 файл не достпен для чтения\e[0m ">&2
	exit -6
fi

if ! [[ -r $2 ]] 
then	
	echo -e "\e[1;31m2 файл не достпен для чтения\e[0m ">&2
	exit -6
fi



if ! [[ -w $2 ]]
then 	
	echo -e "\e[1;31m2 файл не доступен для записи\e[0m ">&2
	exit -6
fi

touch tmp
rev $1 > tmp
tac tmp >> $2
rm tmp


echo "Done"
}


