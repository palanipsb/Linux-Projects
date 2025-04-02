#! /bin/bash

#collect input separatly with different lines
#echo "Please enter name: "
#read name

#collect input separatly with same lines
#read -p "Please enter your name: " name

#Password collection
#read -s -p "Pelease Enter Your Password:" password

#echo "Hello, $name nice to meet you"

read -t 5 -p "Enter a value in 5 seconds: " timed_input
echo "$timed_input"

