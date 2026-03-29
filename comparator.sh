#!/bin/bash
if [[ $# -ne 2 ]]; then
    echo "Error: The script only works with two arguments!"
    exit 0
fi
arg1=$1
arg2=$2
if ! [[ "$arg1" =~ ^-?[0-9]+$ ]] || ! [[ "$arg2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Only two numeric arguments are acceptable!"
    exit 0
fi
if [[ "$arg1" -gt "$arg2" ]]; then
    echo "$arg1 > $arg2"
elif [[ "$arg1" -lt "$arg2" ]]; then
    echo "$arg1 < $arg2"
else
    echo "$arg1 = $arg2"
fi




