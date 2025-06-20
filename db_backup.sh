#!/bin/bash

DB_USER="root"
DB_PASS="root"
DB_NAME="intern_backup_test"
DESTINATION="/home/$USER/backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)


mkdir -p "$DESTINATION"


mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$DESTINATION/${DB_NAME}_backup_$DATE.sql"

echo "\u2705 MySQL database backup completed!"
echo "\U0001f4c1 Backup saved to: $DESTINATION/${DB_NAME}_backup_$DATE.sql"
