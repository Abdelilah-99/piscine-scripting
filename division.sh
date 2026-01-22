#!/bin/bash

a=$1
b=$2

if [[ -z "$a" || -z "$b" ]]; then
    echo "Error: two numbers must be provided"
    exit 1
fi
if [[ b -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 1
fi
if [[ ! a =~ ^[+-]?[0-9]+$ || ! b =~ ^[+-]?[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 1
fi
total=$((a / b))
echo $total
exit 0
