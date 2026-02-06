#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

path="$1"

# Check if path exists
if [ -e "$path" ]; then
    echo "✔ Exists"

    # Check if it's a file
    if [ -f "$path" ]; then
        echo "It is a file"

        [ -r "$path" ] && echo "✔ Readable" || echo "✘ Not readable"
        [ -w "$path" ] && echo "✔ Writable" || echo "✘ Not writable"

    # Extension: If it's a directory
    elif [ -d "$path" ]; then
        echo "It is a directory"
        echo "Files inside the directory:"
        ls "$path"
    fi

else
    echo "✘ Not present"
fi
