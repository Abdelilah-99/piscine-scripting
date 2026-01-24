#!/bin/bash

studentnum=$1
studentname=()
studentgrade=()

# Argument validation
if [[ "$#" -ne 1 || ! "$studentnum" =~ ^[0-9]+$ || $studentnum -le 0 ]]; then
    echo "Error: expect 1 argument only!"
    exit 1
fi

for ((i=1; i<=studentnum; i++)); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    if [[ ! "$grade" =~ ^[0-9]+$ || $grade -lt 0 || $grade -gt 100 ]]; then
        echo "Error: The grade $grade is not a valid input. Only numerical grades between 0 and 100 are accepted."
        exit 1
    fi

    studentname+=("$name")
    studentgrade+=("$grade")
done

for ((i=0; i<studentnum; i++)); do
    if [[ ${studentgrade[i]} -ge 90 ]]; then
        echo "${studentname[i]}: You did an excellent job!"
    elif [[ ${studentgrade[i]} -ge 70 ]]; then
        echo "${studentname[i]}: You did a good job!"
    elif [[ ${studentgrade[i]} -ge 50 ]]; then
        echo "${studentname[i]}: You need a bit more effort!"
    else
        echo "${studentname[i]}: You had a poor performance!"
    fi
done
