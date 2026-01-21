FILE=$1
if [[ -f "$FILE" && -x "$FILE" ]]; then
    echo "File is executable"
else
    echo "File is not an executable or does not exist"
fi
