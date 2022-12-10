#!/bin/bash

# for문을 사용해보자.

# for((exp1; exp2; exp3);)
# do
#   command1
#   command2
#   command3
# done

for ((c=1; c<=5; c++))
    do echo "value : $c"
done

# for variable in [range]
# do
#    cmd
# done

for val in {1..5} # {1,2,3,4,5} 와 동일
do
    echo ${val}
done

for val in $(seq 1 5);
do
    echo ${val}
done

for val in 1 2 3
do
    echo ${val}
done

for var in $@
do
    echo $var
done