#!/bin/bash
mkdir -p struct/{0,1,2,3,4,5,6,7,8,9,A}

touch struct/3/text.txt
touch struct/4/text2.txt
touch struct/A/text3.txt

tar -cf file-struct.tar -C struct .