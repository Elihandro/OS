#!/bin/bash


log1(){


if [[ $# -gt 0 ]]
then
	echo -e "\e[1;31mЗдесь аргументы не нужны\e[0m" >&2 
	exit -3

fi



echo1="$(sed -n 's/WW/Warning/p' /var/log/anaconda/X.log)"
echo2="$(sed -n 's/II/Information/p' /var/log/anaconda/X.log)"




echo -e "\e[1;33m$echo1\e[0m"
echo -e "\e[1;36m$echo2\e[0m"


}
