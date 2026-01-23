#!/bin/bash

if [[ "$#" -ne 1 ]]; then
    echo "Error: No file provided"
    exit 1
fi

FILE=$1



if [[ -e "$FILE" ]]; then
    echo "File exists"
    
    if [[ -x "$FILE" ]]; then
        echo "File is executable"
    else 
        echo "File is not executable"
    fi

    if [[ -r "$FILE" ]]; then
        echo "File is readable"
    else 
        echo "File is not readable"
    fi

    if [[ -w "$FILE" ]]; then
        echo "File is writable"
    else 
        echo "File is not writable"
    fi
else
    echo "File does not exist"
    exit 1
fi

