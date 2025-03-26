#! /bin/bash

#For Loop Practice
for i in {1..5}; do
	echo "Number: $i"
done

fruits=("apple" "banana" "cherry" "dates")
for fruit in "${fruits[@]}"; do
	echo "The fruit is: $fruit"
done


#While Loop practice
counter=1
while [ $counter -le 5 ]; do
	echo "Count: $counter"
	counter=$((counter + 1))
done
echo "While loop finished"

#until loop
counter=1
until [ $counter -ge 5 ]; do
	echo "Count: $counter"
	counter=$((counter + 1))
done
echo "Until loop finished"