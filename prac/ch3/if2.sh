# if2.sh
#!/bin/bash

val="rin"

if [ $val == "dog" ]; then
# [] 안에 한 칸씩 간격이 있어야 함
    echo "dog"
elif [ $val == "cat" ]; then
    echo "cat"
else
    echo "na"
fi

n=10
if [ $n -lt 10 ];
# $n이 10보다 작다면..
then
    echo "one digit"
else   
    echo "two digit"
fi

zxc="qw"
if [ $zxc = "qw" ];
    then echo "gkjfj"
fi


#  -lt같은 조건 테스트를 할 수 있는 플래그들이 있다.

## 숫자 비교

# -eq : equal
# -ne : not equal
# -lt less than
# -le less than or equal
# -gt greater than
# -ge greater than or equal

## string 간 비교

# -z string : empty string
# -n string : not empty string
# string == string :  equal
# string != string :  not equal

##
# ! : not
# x && y : and
# x || y : or

## file을 다루는 경우
# -e file : exists
# -r file : readable
# -w file : writable
# -x file : executable
# -h file : symbolic link
# -d file : directory
# -s file : size is > 0 byte
# -f file : File

