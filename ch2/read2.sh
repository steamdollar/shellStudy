#!/bin/bash

read var1
# var1로 값을 읽는다

read -n 3 var2
# var1로 값을 읽는데, 문자 3개까지만 입력받는다.

read -p "input data : " var3
# 문자열을 출력하면서 var1값을 읽는다.
# echo를 사용해도 되지만..

echo 
echo $var1
echo $var2
echo $var3