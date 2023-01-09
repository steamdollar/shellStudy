#!/bin/bash

for i in $(ls); do
# $ () 는 안에 있는 값을 evaluation을 한다는 말
# cmd를 evalutaion > ls를 실행해 나온 값들을 리턴
# 
    echo item : $i
done

echo -------------

##

for i in $(ps); do
    echo item : $i
done

# 이건 반복문에 들어가야 할 것 같은데..