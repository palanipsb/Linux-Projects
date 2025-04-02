#!/bin/bash
echo "Check the disk utilization in linux system"
disk_size=`df -h |grep 'C:\' |awk '{print $5}' |cut -d '%' -f 1`
echo "$disk_size% of the disk is filled"
if [ $disk_size -gt 80 ];
then
    echo "disk is utilized more than 80%, expand disk or delete files soon"
else
    echo "enough disk space is available"
fi