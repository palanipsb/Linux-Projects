#!/bin/bash
#Debugging shell script
:'
set -x
set -e

name="Palani"
age=23

echo "Name is $name"
echo "Age is $age"

result=$((age*2))
echo "Result is $result"

#Indroducing an intentional error to demonstrate set -e
ls /nonexistent_directory

echo "Script completed"
'

name="Palani"
age=23

echo "Debug: Starting script..."
echo "Debug: Name is  $name"
echo "Debug Age is $age"

result=$((age*2))
echo "Result is $result"

echo "Debug: Script completed"