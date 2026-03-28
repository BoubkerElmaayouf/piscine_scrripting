#!/bin/bash
nohup bash -c '
line=$(cat facts | grep "moon")
if [ -n "$line" ]; then
    echo "$line"
    echo "The moon fact was found!" >> output.txt
fi
' &