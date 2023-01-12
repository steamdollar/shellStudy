#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] ; then
    echo "USAGE : tar.sh [dir] [dir]"
    exit 1
fi

src_dir=$1
target_dir="./$2/"
of=$(date +%Y%m%d).tar

# $src_dir을 $target_dir$of 경로에 압축해 저장
tar -cvf $target_dir$of $src_dir

# ./ex2.sh ./backup