#! /bin/bash
#Variables Practice
name="Palanivel"
echo "$name, Subramani"
age=24
echo "Age: $age years"

x=4
y=5
sum=$((x+y))
echo "Sum: $sum"

fName="Palanivel"
lName="Subramani"
fullName="$fName, $lName"
echo $fullName

str="palanivel subramani"
length=${#str}
echo "Lenght: $length"

current_date=`date`
echo "Current Date & Time : $current_date"

current_time=$(date +%H:%M:%S)
echo "Current Time: $current_time"

readonly pi=3.1415
pi=4.1
echo "PI Vaue: $pi"