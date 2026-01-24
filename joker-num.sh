array=()
c=10
s=$1
    if [[ "$#" != 1 || $s -gt 100 || $s -lt 1 ]]; then
        echo "Error: wrong argument"
        exit 1
    fi
while true; do
    read -p "Enter your guess ($c tries left): " n
    c=$((c - 1))
    if [[ $n -gt $s ]]; then
        echo "Go down"
    elif [[ $n -lt $s ]]; then
        echo "Go up"
    elif [[ $n == $s ]]; then
        echo "Congratulations, you found the number in $c moves!"
        exit 0
    fi
    if [[ $c == 0 ]]; then
        echo "You lost, the number was $s"
        exit 0
    fi
done