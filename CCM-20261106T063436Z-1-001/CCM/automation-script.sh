#!/bin/bash

# Database Backup Script for WordPress + MariaDB
# Laboratory 10 - Enterprise Cloud Architect

BACKUP_DIR="/home/$(whoami)/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
CONTAINER_NAME="wordpress-db"
DB_USER=
DB_PASSWORD=
DB_NAME="wordpress"

# Create backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Create database dump
docker exec $CONTAINER_NAME mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/wordpress_$TIMESTAMP.sql

# Compress the backup
gzip $BACKUP_DIR/wordpress_$TIMESTAMP.sql

# Delete backups older than 7 days
find $BACKUP_DIR -name "wordpress_*.sql.gz" -mtime +7 -delete

# Log the result
echo "[$(date)] Backup completed: wordpress_$TIMESTAMP.sql.gz" >> $BACKUP_DIR/backup.log