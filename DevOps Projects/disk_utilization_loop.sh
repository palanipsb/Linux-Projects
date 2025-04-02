#!/bin/bash
#variable
THRESHOLD=80
# loop all files system
df -h |grep -vE '^Filesystem' |awk '{print $5" "$1}' | while read output;
do
        usage=$(echo $output |awk '{print $1}' |cut -d '%' -f 1)
        partition=$(echo $output |awk '{print $2}')
        if [ $usage -gt $THRESHOLD ];
        then
                echo "Warning!: The utilization reached 80% for $partition, please expand disk or delete files"
        fi
done