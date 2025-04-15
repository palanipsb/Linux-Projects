#!/bin/bash
# Move file to archive directory if modified or created more than 7 days

# Declare variables
src_dir="/data/files"
archive_dir="/archive"

find $src_dir -type f -mtime +7 -exec mv {} $archive_dir \;
echo "Older than  7 days files have been archived"