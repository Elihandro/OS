#!/bin/bash


if [[ $# -gt 0 ]]

then
	 
	echo -e "\e[1;31mЗдесь не нужны аргументы\e[0m ">&2
	exit -3

fi 




echo -e "\e[1;31m Выберите одну из команд нажатием на соответствующую цифру \e[0m"
echo -e "\e[1;32m  1 > Calc \e[0m"
echo -e "\e[1;32m  2 > Search \e[0m"
echo -e "\e[1;32m  3 > Reverse \e[0m"
echo -e "\e[1;32m  4 > Strlen  \e[0m"
echo -e "\e[1;32m  5 > Log  \e[0m"
echo -e "\e[1;32m  6 > Exit  \e[0m"
echo -e "\e[1;32m  7 > Help  \e[0m"

read option
if [[ $option -gt 7 ]]
then 	
	
	echo -e "\e[1;31mВведите число от 1 до 7\e[0m ">&2
	exit -2

fi

case $option in 

1) source ./calc.sh
	if ! [ -f "calc.sh"]
	then
		 echo -e "\e[1;31mКалькулятора нет\e[0m" >&2
	fi

	echo -e "\e[1;31mВведите команду\e[0m"
	read commanda
	echo -e "\e[1;31mВведите первое число\e[0m"
	read number1
	echo -e "\e[1;31mВведите второе число\e[0m"
	read number2
	echo -e "\e[1;31mОтвет равен\e[0m"
	calc1 $commanda $number1 $number2
	source ./interactive.sh;; 		

2) source ./search.sh
	if ! [ -f "search.sh"] 
	then
		 echo -e "\e[1;31mСерча нет\e[0m" >&2
	fi

	echo -e "\e[1;31mВведите директорию\e[0m"
	read direct
	echo -e "\e[1;31mВведите текст\e[0m" 
	read text2
	search1 $direct $text2	
	source ./interactive.sh;; 		

3) source ./reverse.sh	
	if ! [ -f "reverse.sh"]
	then
		 echo -e "\e[1;31mРеверса нет\e[0m" >&2
	fi

	echo -e "\e[1;31mВведите первый файл\e[0m"
	read file1
	echo -e "\e[1;31mВведите второй файл\e[0m"
	read file2
	reverse1 $file1 $file2
	source ./interactive.sh;;		

4) source ./strlen.sh
	if ! [ -f "strlen.sh" ]
	then 	
		 echo -e "\e[1;31mСтрлена нет\e[0m" >&2
	fi
		
	echo -e "\e[1;31mВведите текст\e[0m"
	read Text
	strlen1 $Text
	source ./interactive.sh;; 	
	
5) source ./log.sh
	if ! [ -f "log.sh"]
	then	
		 echo -e "\e[1;31mКалькулятора нет\e[0m" >&2
	fi

	log1 $1 $2	
	source ./interactive.sh;; 		

6) source ./exit.sh
	if ! [ -f "exit.sh"]
	then
		 echo -e "\e[1;31mВыхода нет\e[0m" >&2
	fi

	echo -e "\e[1;31mВведите код ошибки\e[0m"
	read code
	exit $code;;
	
7) source ./help.sh
	if ! [ -f "help.sh"]
	then	
		 echo -e "\e[1;31mПомощи нет\e[0m" >&2
	fi
source ./interactive.sh;; 		
esac
