#!/bin/bash

# Variable declaration
SOURCE="/home/ubuntu/palanipsb"
DESTINATION="/home/ubuntu/dir1"
DATE=$(DATE +%Y-%m-%d_%H-%M-%S)

# Create backup directory and copy files
mkdir -p $DESTINATION/$DATE
cp -r $SOURCE $DESTINATION/$DATE
echo "Backup completed on $DATE"