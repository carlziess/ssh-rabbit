#!/bin/bash
i=0
while read line
do
    hostArr[${i}]=`echo ${line} | awk -F "|" '{print $2 "=>" $3}'`
    sshArr[${i}]=`echo ${line} | awk -F "|" '{print $1"@"$2}'`
    (( ++i ))
done < /path/host.txt
PS3="Host: "
echo "total= " ${#hostArr[*]}
select host in ${hostArr[@]} 
do
    num=$REPLY
if [ $num = q ]
    then
break
fi
    /usr/bin/ssh ${sshArr[$num-1]}
continue
done
