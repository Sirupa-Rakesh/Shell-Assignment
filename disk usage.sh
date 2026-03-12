#!/bin/bash
threeshold = 80
usage = $ (df -h / | awk 'NR==2 {Print $s}' | sed 's/%//')
if [ "usage" -gt "$threeshold" ]; then
    echo "disk usage is ${usage}% - disk almost full"
else
    echo "disk is noraml :${$usage}"
fi