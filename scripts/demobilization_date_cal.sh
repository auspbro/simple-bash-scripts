#!/bin/bash

# Program:
#       You input your demobilization date, I calculate how many days
#        before you demobilize.
# History:
# 2019/06/13    Xiang    First release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will caculate:"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date:(ex>20190101)" date_input
date_d=$(echo $date_input | grep '[0-9]\{8\}')

# check input format.
if [ "$date_d" == "" ];then
        echo "You input wrong date format."
        exit 1
fi

declare -i date_dem=`date --date="$date_input" +%s`     # caculate input date to seconds
declare -i date_now=`date +%s`      # caculate now date to seconds
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))

if [ "$date_total_s" -lt "0" ];then
        echo "You had been demobilization before:" $((-1*$date_d))"ago"
else
        declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
        echo "You will demobilization after $date_d days and $date_h hours."
fi
