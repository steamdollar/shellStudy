#!/bin/bash
# file 값을 변수로 줘도 되고,

read -p "file name? " file

echo "file name: $file"
echo $0
echo `dirname $0`

if [ -e $file ]; then
    echo "file exists"
    dir=$(basename $file)
    echo "dir : $dir" 
else
    echo "file not exist"
    exit 0
fi

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
