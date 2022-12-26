#!/bin/bash

count=0
exec 2> /dev/null

for file in $(ls)
do
    if [ -f $file ]; then
        wc -l $file
        let count=count+1
    elif [ -d $file ]; then
        for subfile in $file/*
        do 
            wc -l $subfile
            let count=count+1
        done
    fi
done >> result3.txt

echo 'total : '$count