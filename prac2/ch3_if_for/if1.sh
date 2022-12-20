#!/bin/bash

name="lsj"

if [ $name=="lsj" ]; then
    echo "my name is $name"
fi

if [ $name == "lsj" ]; then
    echo "my name is $val"
elif [ $val == "cat" ]; then
    echo "cat"
else
    echo $val
fi

n=10
if [ $n -lt 10 ]; then
    echo "one digit num"
else
    echo "two digit num"
fi