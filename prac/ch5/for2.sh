#!/bin/bash

# 주어진 입력 파일들의 라인 수를 화면에 출력한다
# 주어진 파일이 디렉토리라면 디렉 토리 내부의 파일들의 아린수도 화면에 출력한다
# exec ls
exec 2> /dev/null

for file in $@
do
    wc -l $file
done

##

for file in $@
do 
    if [ -f $file ]; then
        wc -l $file
        # file이라면 line수 출력
    elif [ -d $file ]; then
        # 디렉토리라면 서브디렉토리의 파일 라인 수 출력
        for subfile in $file/*
        # 서브 디렉토리의 모든 파일 참조
        do
            wc -l $subfile
        done
    fi
done

# 근데 이러면 빈 폴더에 관해서는 에러가 뜬다.
 
## exec라는 명령어를 사용하면
# exec 2> /dev/null
# exec는 명령어를 대체하는 프록시 같은 기능을 가진다.
# 맨위에 exec ls라고 추가하면 그 명령어가 실행됨

# 오류 출력 메시지를 제거할 수 있다.

# 우선 표준 입출력이 있다.
# 기본적으로 컴터를 사용하면 0이 표준 입력, 1이 표준 출력
# 2가 표준 에러 출력..

# 우리가 파일을 사용할떄 이 0, 1, 2가 기본적으로 예약되어있고, 
# 파일을 생성시 3, 4.. 파일의 스크립트를 할당 받는다.
# exec 2 >/dev/null 로하면 표준 에러 출력을 /dev/null로 하겠다는 말
# 오류가 생기면 화면이 출력되는걸 dev/null로 보내서 화면에 보내지 않겠다는 의미

