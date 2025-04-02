#! /bin/bash

#if Conditional statement
num=10
if [ $num -gt 10 ]; then 
	echo "Number is greater than 10"
elif [ $num -eq 10 ]; then
	echo "Number is equal to 10"
else 
	echo "Number is less than 10"
fi

#case statement
fruit="apple"

case $fruit in
	"apple")
		echo "It is an apple"
		;;
	"banana")
		echo "It is an banana"
		;;
	"orange")
		echo "It is an orange"
		;;
	*)
		echo "Unknown fruit"
		;;
esac