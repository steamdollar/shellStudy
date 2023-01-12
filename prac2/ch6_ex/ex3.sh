#!/bin/bash

cd /dada &> /dev/null
echo rv: $?
# $? : 바로 앞 명령어 수행 상태를 리턴 0 for success, 1 for fail
cd $(pwd) &> /dev/null
echo rv: $?