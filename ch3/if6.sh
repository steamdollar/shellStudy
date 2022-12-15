#!/bin/bash

read -p "Num : " val1
read -p "Num : " val2
read -p "Num : " val3

if [[ $val1 -ge $val2 && $val1 -ge $val3 ]]; then
    echo "max : " $val1
elif [[ $val2 -ge $val1 && $val2 -ge $val3 ]]; then
    echo "max : " $val2
else
    echo "max: " $val3
fi