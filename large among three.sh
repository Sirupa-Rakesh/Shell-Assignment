#!/bin/bash

read a
read b
read c

if [ $a -gt $b ] && [ $a -gt $c ]; then
    echo " $a is greather"
elif [ $b -gt $c ]
    echo " $b is greather"
else 
    echo "$c is greather"
fi  