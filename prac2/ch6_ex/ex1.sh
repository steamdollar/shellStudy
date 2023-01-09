#!/bin/bash

# arg가 없다면
if [ -z "$1" ]; then
    # 사용법을 출력 - 디렉토리 지정 요구
    echo usage: $0 directory
    exit
fi

SRCD=$1
TGTD="./backup/"
OF=home-$(date +%Y%m%d).tgz
tar -cvf $TGTD$OF $SRCD

# tar xf *.tar - 압축 풀기
# tar -cvf * - 압축