#!/bin/bash
log_file="/app/test/logfile.log"
max_size=1000000 # MB
if [ $(wc -c "log_file") -gt $max_size ]; then
    mv "$log_file" "$log_file.old"
    touch "$log_file"
fi