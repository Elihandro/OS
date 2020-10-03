#!/bin/bash
calc1(){

if  [[ $# -gt 3 ]]
then
	echo -e "\e[1;31mВведитите дествие и два числа\e[0m" >&2
	exit -3 
 
fi

echo $#

 case $1 in

	sum)  echo $(($2 + $3));;
	mul)  echo $(($2 * $3));;
	div)  if [[ $3 -eq 0 ]]
		echo 
		echo
		then echo -e "\e[1;31mДелить на ноль нельзя\e[0m" >&2
		echo
		echo
		exit -1
	      fi
		echo $(($2 / $3));;
	sub)  echo $(($2 - $3));;
	  *)    echo
		echo
		echo -e "\e[1;31mCommand not found, please add command\e[0m" >&2
		echo
		echo
		exit -2;;
esac
}
