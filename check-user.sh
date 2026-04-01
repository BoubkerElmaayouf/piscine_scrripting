#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Error: expect 2 arguments" >&2
    exit 1
fi

if [ "$1" != "-e" ] && [ "$1" != "-i" ]; then
    echo "Error: unknown flag" >&2
    exit 1
fi

if [ "$1" = "-e" ]; then
 
    if getent passwd "$2" >/dev/null 2>&1; then
        echo "yes"
    else
        echo "no"
    fi
elif [ "$1" = "-i" ]; then
    user_info=$(getent passwd "$2")
    if [ -n "$user_info" ]; then
        echo "$user_info"
    fi
fi
