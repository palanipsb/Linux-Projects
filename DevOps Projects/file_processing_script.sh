#!/bin/bash
# Process a larg file in chunks of 100 lines

# Declare variables
filename="largefile.txt"
chunk_size=100

split -l $chunk_size $filename part_

for file in part_*
do
    echo "Processing $file..."
    # Our business logic
    rm $file
done