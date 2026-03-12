#!/bin/bash

read -p "enter a file-name:" file

if [ -f $file ]; then
    echo "file exist"
else
    echo " not exist"
fi
