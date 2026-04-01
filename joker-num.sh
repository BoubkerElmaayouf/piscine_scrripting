#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Error: wrong argument"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -lt 1 ] || [ "$1" -gt 100 ]; then

    echo "Error: wrong argument"
    exit 1
fi

for i in {1..5}
do


    while true; do
    
        echo "Enter your guess ($((5 - i + 1)) tries left):"
        read num

        if [ -z "$num" ]; then
            continue
        elif ! [[ $num =~ ^[0-9]+$ ]]; then
            continue
        elif [ "$num" -lt 1 ] || [ "$num" -gt 100 ]; then
            continue
        elif [ "$num" -eq "$1" ]; then
            echo "Congratulations, you found the number in $i moves!"
            exit 0
        elif [ "$num" -lt "$1" ]; then
            echo "Go up"
        else
            echo "Go down"
        fi
        break
    done
done

echo "You lost, the number was $1"