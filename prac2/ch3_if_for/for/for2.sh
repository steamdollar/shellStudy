#!/bin/bash

# 현재 디렉토리에 있는 파일들을 변수로 주면
# 그 파일의 라인 수를 화면에 출력해주는 프로그램을 만들어보자.
# 디렉토리에 폴더가 있다면 그 안에 있는 파일들의 라인 수도 출력한다.

for file in $@
do
    wc -l $file
    # wc : 주어진 파일의 라인 수를 출력해주는 명령어이다.
    # word count의 줄임말이다.
    #  플래그에 따라 파일의 바이트, 문자, 단어, 라인 수를 출력해줄 수 있다.
    # -l은 line의 약자로 파일의 라인 수를 출력하라는 명령을 의미한다.
done

##

for file in $@
do
    if [ -f $file ]; then
        wc -m $file
    elif [ -d $file ]; then
        for subfile in $file/*

            do
                wc -m $subfile
            done
    fi
done

# -c : 파일의 byte 수 출력
# -m : 파일의 문자 수 출력
# -l : 파일의 라인 수 출력
# -w : 파일의 단어 수 출력