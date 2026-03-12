#!/bin/bash

read -p "enter a number :" number 
if (( number % 2 )); then
   echo " it is even"
else
   echo "it is odd"
fi