#! /bin/bash
#Regular expression

#grep search practice
grep "cherry" 1.txt
grep "Sportsman do offending supported extremity breakfast by listening" 1.txt
history | grep "vi arrays.sh"

#sed command to repalce
sed 's/cherry/goava/' 1.txt

#awk commands to search in table format
awk '$2 > 25 { print $1 }' 2.txt