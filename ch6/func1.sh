#!/bin/bash

test_func() {
    echo "hello world"
}

test_func

val=5
function sum() {
    # shell 스크립트에서 매개변수를 받는 방법은..
    # 괄호에 넣어주는 것이 아니라..
    local val=3
    # 함수 안에서 변수 선언시 local 키워드 입력시 지역 변수가 된다

    echo "$1 $val"
}
# function은 붙여도 되고 안 붙여도 된다

sum 5
# 매개변수를 다음과 같이 전달할 수 있다.
# 함수의 $1에 함수명 옆에 붙여준 변수가 전달된다