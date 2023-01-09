#!/bin/bash

# exec 2> /dev/null

for file in $(ls)
# ls 명령어를 쉘에 쳤을때 나온 결과값을 변수화 하고 싶다면 다음과 같이
# 명령어를 감사꼬 $를 붙여주면 된다.
do
    wc -l $file
done
# 모든 파일의 길이 출력

for file in $(ls)
do
    if [ -f $file ]; then
            wc -l $file >> result2.txt
    elif [ -d $file ]; then
            for subfile in $file/*
        do
            wc -l $subfile >> result2.txt
        done
    fi
done

# > : 명령어 뒤에 나오는 파일에 쓸 때 사용 (write or overwrite)
# 명령어를 실행한 결과가 나올텐데 그걸 지정한 파일에 쓰거나 덮어쓴다.
# e.g. echo $PATH > path.txt


# >> : 명령어 뒤에 나오는 파일에 추가할 때 사용 (append)
# 지정한 파일이 없다면 생성, 있담녀 이어 쓴다.
