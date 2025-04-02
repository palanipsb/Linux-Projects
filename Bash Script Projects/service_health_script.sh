#!/bin/bash
# Define the service name
SERVICE_NAME="docker.service"

# Function to check and restart service
check_service(){
	if systemctl is-active --quiet "$SERVICE_NAME"; then
		echo "$SERVICE_NAME is running successfully."
	else
		echo "$SERVICE_NAME is not running. Attempting to start...."
		
		# Start the service
		sudo systemctl start "$SERVICE_NAME"
		
		# Wait for 3 seconds and recheck status
		sleep 3
		
		if systemctl is-active --quiet "$SERVICE_NAME"; then
			echo "Successfully Started $SERVICE_NAME."
		else
			echo "FAILED to start $SERVICE_NAME."
			echo " Check logs with: journalctl -u $SERVICE_NAME"
			exit 1
		fi
	fi
}

# Main execution
echo "==============================="
echo "Service Health check: $SERVICE_NAME"
echo "==============================="

# Check if systemctl exits (for systemd systems)
if ! command -v systemctl &> /dev/null; then
	echo "The script requires systemd/systemctl"
	exit 1
fi

check_service

# Verify Docker daemon responsiveness

if [[ "$SERVICE_NAME" == "docker.service" ]]; then
	if docker ps &> /dev/null; then
		echo "Docker daemon is responsive"
	else
		echo "Docker daemon is not responding despite active service!"
	fi
fi
exit 0