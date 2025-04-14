#!/bin/bash
# Backup a dorectory and compress and include timesatmp as name to it

# Declare variables
src_dir="/var/logs"
backup_dir="/backup/logs"
file_name="log_backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Commands to backup and zip
tar -czf $backup_dir/$file_name $src_dir
echo "Backup Completed: $file_name"
