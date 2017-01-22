#!/bin/bash

#echo .Enter the First Number: .
read -p "Enter the First Number:" a
#echo .Enter the Second Number: .
read -p "Enter the Second Number:" b
x=$(expr "$a" + "$b")
echo $a + $b = $x

