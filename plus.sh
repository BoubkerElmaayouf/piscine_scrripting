#!/bin/sh
if [ "$#" -ne 2 ]; then
    exit 1
fi
result=$(expr "$1" + "$2")
echo "$result"

