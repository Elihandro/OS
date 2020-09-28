#!/bin/bash
case $1 in

 calc)
	source ./calc.sh
	calc1 $2 $3 $4 ;;
reverse)
	source ./reverse.sh
	reverse1 $2 $3;;
 strlen) source ./strlen.sh
	strlen1 $2 $3;;
esac

