#!/bin/bash

SOURCE="/home/$USER/Documents"
DESTINATION="/home/$USER/backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $DESTINATION

if [ -z "$(ls -A $SOURCE)" ]; then
        echo " The source is folder empty. Nothing to back up."
        exit 1

fi

tar -czvf $DESTINATION/documents_backup_$DATE.tar.gz $SOURCE

echo "Back up complete."
echo "Backup save to: $DESTINATION/documents_backup_$DATE.tar.gz"
