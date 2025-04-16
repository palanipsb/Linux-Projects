#!/bin/bash
# Database backup
db_name="mydb"
backup_dir="/backup/mydb"

filename="db_backup_$(date +%y-%m-%d_%H-%M-%S).sql.gz"

mysqldump -u root -p $db_name | gzip > $backup_dir/$filename

echo "Database backup has been completed: $filename"
