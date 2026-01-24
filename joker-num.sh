#!/bin/bash

secret=$1
tries=5

if [[ "$#" -ne 1 || ! "$secret" =~ ^[0-9]+$ || $secret -lt 1 || $secret -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

for ((i=1; i<=tries; )); do
    remaining=$((tries - i + 1))
    read -p "Enter your guess ($remaining tries left): " guess

    if [[ -z "$guess" || ! "$guess" =~ ^[0-9]+$ ]]; then
        continue
    fi

    if [[ $guess -lt 1 || $guess -gt 100 ]]; then
        continue
    fi

    if [[ $guess -gt $secret ]]; then
        echo "Go down"
    elif [[ $guess -lt $secret ]]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $i moves!"
        exit 0
    fi

    ((i++))
done

echo "You lost, the number was $secret"
