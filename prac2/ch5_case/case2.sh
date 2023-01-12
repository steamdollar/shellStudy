#!/bin/bash

case $1 in
	# $1 == protoss인 경우
	protoss)
    	echo "select protoss"
        # semicolon 2개로 각 case들을 구분한다.
        ;;
    terran)
    	echo "select terran"
        ;;
    zerg)
    	echo "select zerg"
        ;;
    # default는 다음과 같이 *)로 표시해준다.
    *)
    	echo "random"
        ;;
# case를 역순으로 쓴 esac 로 case문을 닫아준다.
esac