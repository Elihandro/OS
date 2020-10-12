#!/bin/bash

search1(){


if ! [[ -d $2 ]]
then
	
	echo -e "\e[1;31mДиректории не существуетdfdf\e[0m ">&2
	exit -4
fi

if ! [[ -r $2 ]]
then 
	
	echo -e "\e[1;31mНет доступа на чтение\e[0m ">&2
	exit -4
fi

if  grep -r "$3" "$2"
then 
	echo -e "\e[1;31m^Найдено^\e[0m" 

else
	echo -e "\e[1;31mНе найдено\e[0m" 
	 

fi
}
