#!/bin/bash
#Variable declaration
TARGET=("https://google.com" "https://yahoo.com")
TIMEOUT=5

# Check the http connection time
echo "Http Response time monitoring"
echo "-----------------------------"
date +"Test time: %Y-%m-%d %H-%M-%S"
echo ""

for url in "${TARGET[@]}"; do
	echo "Testing: $url"
	
	# curl command with time metrics
	curl_output=$(curl -o /dev/null -s -w \
		"DNS Lookup: %{time_namelookup}s\n\
		Connect Time: %{time_connect}s\n\
		TLS Handshake: %{time_appconnect}s\n\
		First Byte: %{time_starttransfer}s\n\
		Total Time: %{time_total}s\n" \
		--max-time $TIMEOUT "$url" 2>&1)
		
	# Check exit status
	if [ $? -eq 0 ]; then
		echo -e "Success\n$curl_output"
	else
		echo -e "Failed to connect (Timeout: ${TIMEOUT}s)"
	fi
	
echo "-------------------------------"
done