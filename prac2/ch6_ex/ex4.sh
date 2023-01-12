#!/bin/bash

Counter=0

while [ $Counter -lt 10 ]; do
    echo the counter is $Counter
    
    # 이렇게 자기를 참조하는 걸 하려면 let을 사용해야함
    # 없으면 문자열 "Counter+1"이 counter의 value가 된다.  
    let Counter=Counter+1
    done