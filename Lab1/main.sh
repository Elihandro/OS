#!/bin/bash
case $1 in

 calc)
	source ./calc.sh
	calc1 $2 $3 $4 $5 $6;;
 search)
	source ./search.sh
	search1 $2 $3 $4;;
 reverse)
	source ./reverse.sh
	reverse1 $2 $3 $4;;

 strlen)
	source ./strlen.sh
	strlen1 $2 $3 $4;;

    log)
	source ./log.sh
	log1 $2 $3 $4;;
 
 help)
	source ./help.sh;;

 exit)
	source ./exit.sh
	exit1 $2 $3 $4;;

*) echo "Введите одну из этих комманд"
	source ./help.sh	
esac

