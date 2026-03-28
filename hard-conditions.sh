if [ -x "$1" ] && [ -f "$1" ]
then
    echo "File is executable"
else
    echo "File is not an executable or does not exist"
fi


