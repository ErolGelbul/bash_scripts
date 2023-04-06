#!/bin/bash
SRC_DIR="/path/to/source/directory"
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="backup-$DATE.tar.gz"

tar -czvf "$BACKUP_DIR/$FILENAME" "$SRC_DIR"
echo "Backup created at $BACKUP_DIR/$FILENAME"