#!/bin/bash
# Variable declaration
DB_NAME="my_database"
BACKUP_DIR="/home/ubuntu/palanipsb/db_backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

# Perfom database backup
mysqldump -u root -p $DB_NAME > $BACKUP_DIR/$DB_NAME-$DATE.sql
echo "DATABASE backu has been completed: $BACKUP_DIR/$DB_NAME-$DATE.sql"