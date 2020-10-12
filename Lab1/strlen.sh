#!/bin/bash


strlen1(){

	if [[ $# -gt 2 ]]
	then
		echo -e "\e[1;31mВведите ОДНУ строку\e[0m" >&2
		exit -3
	fi
	

	if [[ ${#2} -eq 0 ]]
	then 
		echo -e "\e[1;31mВведите строку\e[0m" >&2
		exit -2
	else	
		echo -e "\e[1;31mОтвет равен\e[0m"
		echo "${#2}"
	fi
}

strlen2(){



	if [ ${#1} -eq 0 ]
	then 
		echo -e "\e[1;31mВведите строку\e[0m" >&2
	else
		echo -e "\e[1;31mОтвет равен\e[0m"
		echo "${#1}"	
	fi

}
