studentnum=$1
if [[ "$#" -ne 1 ]]; then
    echo "Error: expect 1 argument only!"
    exit 1
fi
for ((i=1; i <= studentnum; )); do
    echo -n "Student Name #$i: "
    read name
    echo -n "Student Grade #$i: "
    read grade
    if [[ ! "$grade" =~ ^[0-9]+$ || $grade -lt 1 || $grade -gt 100 ]]; then
        echo "Error: The grade <grade> is not a valid input. Only numerical grades between 0 and 100 are accepted."
        exit 1
    fi
    if [[ $grade -ge 90 ]]; then
        echo "$name: You did an excellent job!"
    elif [[ $grade -ge 70 ]]; then
        echo "$name: You did a good job!"    
    elif [[ $grade -ge 50 ]]; then
        echo "$name: You need a bit more effort!"
    elif [[ $grade -lt 50 ]]; then
        echo "$name: You had a poor performance!"       
    fi
    ((i++))
done