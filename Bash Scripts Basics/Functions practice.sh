#! /bin/bash

#Functions
print_args() {
	echo "First Argument: $1"
	echo "Second Argument: $2"
}
print_args "hello" "world"

#local variables
calculate_sum() {
	local num1="$1"
	local num2="$2"
	local sum=$((num1+num2))
	echo $sum
	return $sum
}

result=$(calculate_sum 10 20)
echo "Sum: $result"

#global variable
golabl_var="I am global variable"
local_variables() {
	local local_var="I am local variable"
	echo "Inside function: $local_var"
	echo "Outside function: $golabl_var"
}

local_variables