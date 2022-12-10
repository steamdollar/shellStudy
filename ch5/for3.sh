#!/bin/bash

# 주어진 입력 파일들의 라인 수를 화면에 출력한다
# 주어진 파일이 디렉토리라면 디렉 토리 내부의 파일들의 아린수도 화면에 출력한다
# exec ls
exec 2> /dev/null


for file in $@
do 
    if [ -f $file ]; then
        wc -l $file >> result2.txt
        # file이라면 line수 출력
    elif [ -d $file ]; then
        # 디렉토리라면 서브디렉토리의 파일 라인 수 출력
        for subfile in $file/*
        # 서브 디렉토리의 모든 파일 참조
        do
            wc -l $subfile >> result2.txt
            # 결과룰 result2.txt를 만들어 그 안에 저장함
        done
    fi
done
