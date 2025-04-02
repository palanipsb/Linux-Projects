#!/bin/bash
TARGET="google.com"
RETRIES=2
TIMEOUT=2

# check if the host is is reachable
if ping -c $RETRIES -W $TIMEOUT $TARGET &> /dev/null; then
	echo "$TARGET is reachable"
else
	echo "$TARGET is not reachable"
fi
