#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c


if [ $a -gt $b ] && [ $a -gt $c ]; then
    echo " $a is greather"
elif [ $b -gt $c ]; then
    echo " $b is greather"
else 
    echo "$c is greather"
fi  