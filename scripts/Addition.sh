#!/bin/bash

# 使用read [-t] 参数计时输入
if read -t 10 -p "Enter the First Number:" a
then
	echo "hello, welcome to my script."
else
	echo "Sorry, too slow."
fi


if read -t 10 -p "Enter the Second Number:" b
then
	echo "Good job!"
else
	echo "Sorry, too slow."

x=$(expr "$a" + "$b")
echo $a + $b = $x

