#!/bin/bash

val=""

if [ -z $val ]; then
    echo "null string"
fi

val2=$1

if [ -z $val2 ]; then
    echo "null string"
else
    echo "string : $1 "
fi

val3=$1

if [ -z $1 ]; then
    echo "null"
elif [[ $1 == "dog" || $2 == "cat" ]]; then
# 2개의 조건을 사용하려면 []를 두개 씌워야 한다 (shell마다 다름)
    echo 'I have a pet'
else
    echo "I have no pet"
fi