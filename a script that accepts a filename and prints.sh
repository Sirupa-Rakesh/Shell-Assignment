#!/bin/sh

# Check if filename is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file="$1"

# Check if file exists
if [ ! -e "$file" ]; then
    echo "Error: File does not exist"
    exit 1
fi

# Check if it is a regular file
if [ ! -f "$file" ]; then
    echo "Error: Not a regular file"
    exit 1
fi

# Check read permission
if [ ! -r "$file" ]; then
    echo "Error: Permission denied"
    exit 1
fi

# Check if file is empty
if [ ! -s "$file" ]; then
    echo "File is empty"
    echo "Lines: 0"
    echo "Words: 0"
    echo "Characters: 0"
    exit 0
fi

# Count lines, words, and characters
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -c < "$file")

echo "Lines       : $lines"
echo "Words       : $words"
echo "Characters  : $chars"
