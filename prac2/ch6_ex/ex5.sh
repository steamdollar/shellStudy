#!/bin/bash

backup_dirs=("/etc" "/home" "/boot")
dest_dir="/backup"
dest_server="server1"
backup_date=$(date +%b-%d-%y)

# [@] : 배열의 원소 모두를 가져온다는 의미
echo "starting backup of : ${backup_dirs[@]}"

for i in "${backup_dir[@]}"; do
    sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i

    if [ $? -eq 0 ]; then
        echo "$i backup succeeded"
        else
        echo "$i backup failed"
    fi

    scp /tmp/$i-$backup_date.tar.gz $dest_server:$dest_dir

    if [ $? -eq 0 ]; then
        echo "$i transfer succeeded"
        else
        echo "$i transfer failed"
    fi
done

# sudo rm /tmo/*.gz
echo "backup Done"