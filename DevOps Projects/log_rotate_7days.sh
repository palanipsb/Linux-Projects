#!/bin/bash
# Rotate the logs by compressing logs older than 7 days and remove original file

# Declare variables
log_dir="/var/log/myapp"
archive_dir="/var/log/archive"
retention_days=7

# validate directories
mkdir -p "$archive_dir" || exit 1 [ -d "$log_dir" ] || { echo "Error: $log_dir not found">&2; exit 1; }

# Archive and compress

find "$log_dir" -maxdepth 1 -type f -mtime $retention_days \
    -exec tar -czf {}.tar.gz {} \; \ 
    -exec rm {} \; \
    -print "Archived the files at $archive_dir"