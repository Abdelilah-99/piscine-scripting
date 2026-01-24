flag=$1
username=$2
if [[ "$#" != 2 ]]; then
    echo "Error: expect 2 arguments"
    exit 1
fi
if [[ $flag != "-e" && $flag != "-i" ]]; then
    echo "Error: unknown flag"
    exit 1
fi

if [[ $flag == "-e" ]]; then
    if getent passwd "$username" &>/dev/null; then
        echo "yes"
    else
        echo "no" >&2
    fi
elif [[ $flag == "-i" ]]; then
    if getent passwd "$username" &>/dev/null; then
        getent passwd "$username"
    else
        echo ""
    fi
fi
