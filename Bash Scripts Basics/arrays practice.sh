#! /bin/bash

#arrays practice
fruits=("apple" "banana" "orange")

echo "First fruit: ${fruits[0]}"
echo "Third fruit: ${fruits[2]}"

#add in array
fruits+=("cherry" "peach")

#remove in array
unset fruits[3]

for fruit in "${fruits[@]}"; do
	echo "The fruit is: $fruit"
done

#length of the array
length=${#fruits[@]}
echo "number of fruits: $length"