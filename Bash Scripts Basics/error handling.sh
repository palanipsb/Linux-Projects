#! /bin/bash

#error handling
echo "Starting scipt"
ls /nonexist
if [ $? -eq 0 ]; then
	echo "The directory exists"
else
	echo "The directory doesn't exist"
fi

echo "Script finished"

#custom error messages
file="not-n-existent.txt"
if [ ! -f "$file" ]; then
	echo "Error: File doesn't exist"
	exit 1
fi

echo "File exist"

#trap for handling signals
cleanup() {
	echo "Cleaning Up"
####
	exit 1
}

trap cleanup INT
echo "running"
sleep 10