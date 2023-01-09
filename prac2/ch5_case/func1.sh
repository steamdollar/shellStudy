#!/bin/bash

# 함수 선언
# function은 붙여도 되고 안 붙여도 됨
test_func() {
    echo "hello world"
}

# 함수 호출
test_func

# 전역 변수 선언
val=5


function print() {
    # 지역 변수로 선언하면 동명의 전역변수가 있어도 사용가능
    local val=3

    echo $val
}

print


sum() {
    # $(()) 안에 써줘야 문자열로 인식하지 않고 연산 결과를 보여준다.
    echo $(("$1"+"$2"))
}


# 매개변수는 괄호를 써서 전달하지 않는다.
# $1, $2를 전달한 것처럼 한 칸 띄고 옆에 파라미터를 넣어주면 된다.
sum 5 3