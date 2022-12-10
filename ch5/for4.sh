#!/bin/bash

count=0
exec 2> /dev/null

for file in $@
do 
    if [ -f $file ]; then
        wc -l $file 
        # count = count + 1
        # 이걸 쉘에서 수행하려면 문제가 있다.
        # count에 걍 "count + 1" 이라는 문자열이 저장되어버림 
        # 그걸 막으려면 let을 붙여줘야 한다.
        let count=count+1
    elif [ -d $file ]; then
        for subfile in $file/*
        do
            wc -l $subfile 
            let count=count+1
        done
    fi
done >> result3.txt
# 이런것도 있고 만약 입력을 
# done < input.txt >> result2.txt
# 키보드로 입력받지 않고 input.txt의 데이터를 읽어 수행 후, result2.txt에 저장

echo 'total : ' $count
# >> 기호가 파일이 이미 있으면 결과가 누적된다..