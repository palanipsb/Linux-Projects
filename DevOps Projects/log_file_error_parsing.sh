#!/bin/bash
# Create a log file that contains only error entries from a log file

# Declare variables
logfile="/var/log/syslog"
error_log="/var/error_logs"
filename="error_log.txt"
keyword="ERROR"

grep $keyword $logfile > $error_log/$filename
echo "All ERROR has been saved in $error_log/$filename"