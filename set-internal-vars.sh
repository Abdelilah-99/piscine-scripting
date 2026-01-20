MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR=(one two three four five)
echo $MY_MESSAGE
echo $MY_NUM
echo $MY_PI
# echo $MY_ARR
for item in "${MY_ARR[@]}"; do
    echo -n "$item"
    if [[ "$item" == "five" ]]; then
        break
    fi
    echo -n " "
done
echo ""