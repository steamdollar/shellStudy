#!/bin/bash

filesystems=("/" "/apps" "/database")

for i in ${filesystems[@]}; do
    usage=$(df -h $i | tail -n 1 | awk '{print $5}' | cut -d % -f1)

    if [ $usage -ge 90 ]; then
        alert = "running out of space on $i, usage is: $usage%"

        echo "sending out a disk space alert email"
        echo $alert | mail -s "$i is $usage% full" your_email
    fi
done

# 배열 선언 : array=("a" "b" "c")
# 괄호로 묶고 따옴표 없이 한칸 벌려줌