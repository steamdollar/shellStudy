#!/bin/bash

read -p "Insert name : " name

# if [ $name == "lsj" ]; then
#     echo "my name is lsj"
# elif [ $name == "kim" ]; then
#     echo "my name is kim"
# else
#     echo "not enlisted"
# fi

if [[ $name == "lsj" || $name == "kim" ]]; then
    echo "my name is $name"
else
    echo "not enlisted"
fi

# cont'd

read -p "Insert Num : " num

if [ $num -lt 10 ]; then
	echo "digit : 1"
elif [ $num -lt 100 ]; then
	echo "digit : 2"
else
	echo "eqaul to/more than 3 digits"
fi