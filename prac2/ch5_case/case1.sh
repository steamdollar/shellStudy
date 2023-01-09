#!/bin/bash

case $1 in
    # case hello
    hello)
        echo "hello"
        ;;
    # semicolon 2개로 case 구분

    # case good
    good)
        echo "good"
        ;;
    # case default
    *)
        echo "invalid"
        exit 1 # means fail
        ;;
esac

## 

echo "what is your favorite"
echo "1) game "
echo "2) study "
echo "3) sleep"
echo "4) cafe "

read case
case $case in
    1) echo "1111111111";;
    2) echo "222222222";;
    3) echo "3333333333";;
    4) echo "4444444444";;
esac