#!/bin/bash

exit1(){
case $1 in
[0-255]) exit "$1";;
      *) exit 0;;
esac
}
