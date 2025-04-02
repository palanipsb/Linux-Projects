#!/bin/bash
NO_OF_RECORDS=5
path="$1"
echo $path
du -ah $path |sort -hr |head -$NO_OF_RECORDS > $path/filerecords
echo "This is the list of file records with size in order"
cat $path/filerecords
