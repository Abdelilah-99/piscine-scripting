#!/bin/bash

array=()
c=0
while true; do
    c=$((c + 1))
    echo -n "Enter a number: "
    read -r line
    if [[ ! $line =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 0
    fi
    if [[ $line -gt 10000 ]]; then
        echo "ERROR: The number entered is too large"
        exit 0
    fi
    array+=("$line")
    if [[ $c == 10 ]]; then
        break
    fi
done

max="${array[0]}"

for i in "${array[@]}"; do
    echo "Comparing: $i with current max: $max"
    if [[ $i -gt $max ]]; then
        max="$i"
    fi
done

echo "The largest number is: $max"
