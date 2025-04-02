#!/bin/bash
#Sub Shell Practice

#Running commands is a subshell
echo "Current working directory: $(pwd)"
echo "Number of files in /tmp: $(ls /tmp |wc -l)"


#backgroud process using &
echo "Script started..."
sleep 10 &
wait
echo "Script Ended"

#Foregrond process 
echo "Script started..."
echo "Enter a value"
read value
echo "Script Ended"

