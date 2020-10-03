#!/bin/bash


log1(){
echo1="$(sed -n 's/WW/Warning/p' /var/log/anaconda/X.log)"
echo2="$(sed -n 's/II/Information/p' /var/log/anaconda/X.log)"




echo -e "\e[1;33m$echo1\e[0m"
echo -e "\e[1;36m$echo2\e[0m"


}
