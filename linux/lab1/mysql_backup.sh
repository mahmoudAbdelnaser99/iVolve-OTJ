#!/bin/bash

BACKUP_DIR="/root/linux/lab1/mysql_backups"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DIR/MySQL_backup_$DATE.sql"

USER="root"
PASSWORD="mahmoud"

mysqldump -u $USER -p$PASSWORD --all-databases > $BACKUP_FILE


