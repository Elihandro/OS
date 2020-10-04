#!/bin/bash
case $1 in

   calc)
	if ! [ -f "calc.sh" ]
	then	
		echo -e "\e[1;31mКалькулятора нет\e[0m" >&2
		exit -4
	fi 

	source ./calc.sh
	calc1 $2 $3 $4 $5 $6;;
 search)
	if ! [ -f "search.sh" ]
	then	
		echo -e "\e[1;31mСерча нет\e[0m" >&2
		exit -4	
	fi
	source ./search.sh
	search1 $2 $3 $4;;
 reverse)
	if ! [ -f "reverse.sh" ]
	then	
		echo -e "\e[1;31mРеверса нет\e[0m" >&2
		exit -4
	fi
	source ./reverse.sh
	reverse1 $2 $3 $4;;

 strlen)
	if ! [ -f "strlen.sh" ] 
	then	
		echo -e "\e[1;31mСтрлена нет\e[0m" >&2
		exit -4
	fi
	source ./strlen.sh
	strlen1 $2 $3 $4;;

    log)
	if ! [ -f "log.sh" ] 
	then 	
		echo -e "\e[1;31mЛога нет\e[0m" >&2
		exit -4
	fi
	source ./log.sh
	log1 $2 $3 $4;;
 
   help)
	if ! [ -f "help.sh" ]
	then
		echo -e "\e[1;31mПомощь отсутствует. Давай сам.\e[0m" >&2
		exit -4
	
	fi
	source ./help.sh;;

   exit)
	if ! [ -f "exit.sh" ]
	then	
		echo -e "\e[1;31mВыхода нет, смерись\e[0m" >&2
		exit -4
	fi
	source ./exit.sh
	exit1 $2 $3 $4;;

      *)
		echo "\e[1;31mВведите одну из этих комманд\e[0m" >&2
		exit -5
	source ./help.sh	
esac

