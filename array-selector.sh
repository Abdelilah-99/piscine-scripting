#!/bin/bash
name=(red blue green white black)
if [[  $1 -lt 1 || $1 -ge $((${#name[@]} + 1)) || ! $1 =~ ^[0-9]+$ || "$#" -ne 1 ]]; then
    echo "Error"
    exit 1
fi
echo "${name[$1-1]}"