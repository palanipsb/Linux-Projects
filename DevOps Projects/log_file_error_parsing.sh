#!/bin/bash
# Create a log file that contains only error entries from a log file

# Declare
log_file="/var/log/syslog"
keyword="ERROR"

grep $keyword $log_file > error_log.txt
echo "All ERROR entries have been captured in error_log.txt"