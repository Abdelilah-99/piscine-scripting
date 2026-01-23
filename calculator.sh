if [[ "$#" != 3 ]]; then
    echo "Error: expect 3 arguments"
    exit 1
fi

do_add() {
    echo $1 + $2 | bc
}

do_sub() {
    echo $1 - $2 | bc
}

do_mult() {
    echo $1 * $2 | bc
}

do_divide() {
    if [[ $2 == 0 ]]; then
        echo "Error: division by 0"
        exit 2
    fi
    echo $1 / $2 | bc
}

case $2 in
    "+")
        do_add $1 $3
        ;;

    "-")
        do_sub $1 $3
        ;;

    "*")
        do_mult $1 $3
        ;;

    "/")
        do_divide $1 $3
        ;;

    *)
        echo "Error: invalid operator"
        exit 3
        ;;
esac
