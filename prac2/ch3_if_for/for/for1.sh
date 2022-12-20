#!/bin/bash

for((c=1; c<=10; c++))
do 
    echo $c
done

for val in {1..5} # {1, 2, 3, 4, 5}와 동일
do
    echo $val
done

for val in $(seq 1 5)
do
    echo ${val}
done

for val in 1 2 3 5 6 7 10
do
    echo $val
done

for var in $@
do
    echo $var
done