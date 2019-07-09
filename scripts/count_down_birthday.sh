#!/bin/bash
#==================================================
# Description: script description
# Created: date  
# Author: auspbro@gmail.com
#==================================================


echo_color()
{
    case $1 in
        green)
            echo -e "\033[32;40m$2\033[0m"
            ;;
        red)
            echo -e "\033[31;40m$2\033[0m"
            ;;
        yellow)
            echo -e "\033[33;40m$2\033[0m"
            ;;
        *)
            echo "Example: echo_color red string"
    esac
}


echo_color green "Please input your birthday."
read -p "Please input your birthday (MMDD, ex> 0723):" bir
now=`date +%m%d`
if [[ "$bir" == "$now" ]]; then
    echo "Happy Birthday to you!!!"
elif [[ "$bir" -gt "$now" ]]; then
    year=`date +%Y`
    total_d=$(($((`date --date="$year$bir" +%s`-`date +%s`))/60/60/24))
    echo "Your birthday will be $total_d later"
else
    year=$((`date +%Y`+1))
    total_d=$(($((`date --date="$year$bir" +%s`-`date +%s`))/60/60/24))
    echo "Your birthday will be $total_d later"
fi

