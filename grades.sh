#!/bin/bash



if [ "$#" -ne 1 ]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

marks=()



for (( i=1; i<=$1; i++ )); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    if [ -z "$grade" ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    elif ! [[ "$grade" =~ ^[0-9]+$ ]]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    elif [ "$grade" -lt 0 ] || [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi

    if [ "$grade" -ge 90 ]; then
        marks+=("$name: You did an excellent job!")
    elif [ "$grade" -ge 70 ]; then
        marks+=("$name: You did a good job!")
    elif [ "$grade" -ge 50 ]; then
        marks+=("$name: You need a bit more effort!")
    else
        marks+=("$name: You had a poor performance!")
    fi
done



for (( i=0; i<${#marks[@]}; i++ )); do
    echo "${marks[i]}"
done
