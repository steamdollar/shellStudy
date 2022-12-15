#!/bin/bash

echo "\$$ : " $$

echo "\$0 : " $0

echo "\$1 : " $1 

echo "\$2 : " $2 

echo "\$3 : " $3

echo "\$# : " $#

echo "\$@ : " $@

echo "\$? : " $?


# /bin/bash^M: bad interpreter: No such file or director
# ref : http://www.nazmulhuda.info/-bin-bash-m-bad-interpreter-no-such-file-or-directory


# vi로 open 후, esc 하고 포맷을 바꿔준다.
# :set fileformat=unix