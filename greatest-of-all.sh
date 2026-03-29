#!/bin/bash
max=0 
for i in {1..10}; do
    read -p "Enter a number: " line
    if [[ -z "$line" ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 1
    fi
    if ! [[ "$line" =~ ^[0-9]+$ ]]; then
        echo "ERROR: Invalid input only positive numerical characters are allowed"
        exit 1
    fi
    if [[ "$line" -gt 10000 ]]; then
        echo "ERROR: The number entered is too large"
        exit 1
    fi
    if [[ "$line" -gt "$max" ]]; then
        max=$line
    fi
done
echo "The largest number is: $max"
