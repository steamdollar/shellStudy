#!/bin/bash

# ch6 .case
# 경우에 따라 수행하는 명령어를 달리하고 싶을 때 case문을 사용한다.

# case <variable> in
    # <case 1>)
    # <commands>
    # ;;
    # <case 2>)
    # <other cmd>
    # ;;
# esac

case $1 in
    hello)
    echo "hello world"
    ;;
    good)
    echo "good day"
    ;;
    *)
    echo "invalid"
    ;;
esac

echo "whats your favorite"
echo "1) apple"
echo "2) banana"
echo "3) no"
read case

case $case in
    1) echo "1111111111111";;
    2) echo "2222222222222";;
    3) echo "exit"
esac
