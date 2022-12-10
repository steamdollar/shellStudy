#!/bin/bash
# file 값을 변수로 줘도 되고,

file=$1
echo "input file if=s $file"

if [ -r $file ]
then
    echo "file has read access"
else
    echo "file does not have read access"
fi

if [ -w $file ]
then
    echo "file has write access"
else
    echo "file does not have write access"
fi

# 이밖에 -d, -s -e 등의 flag가 있다..