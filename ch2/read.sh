#!/bin/bash

# 변수 읽기..
# read [-ers] [-a array] [-d delim] [-i text] [-n nchars] [-N nchars] [-p prompt]

var='hello'
echo $var

read -p "Enter: " var1

echo $var1

# 내가 입력한 값을 받아서 그걸 저장한 다음
# 이후에 다시 쓸 수 있도록 함..

echo "enter string"
read var1
echo "Input is $var1"

echo "enter string"
read var2
echo "Input is $var2"

echo "enter string"
read var3
echo "Input is $var3"

echo "enter string"
read var4
echo "Input is $var4"
