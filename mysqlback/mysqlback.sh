#!/bin/sh
DB_NAME="xxxx"
DB_USER="root"
DB_PASS="xxxxx"
BCK_DIR="/opt/mysql-backup"
DATE=`date +%Y%m%d_%H%M%S`
mkdir -p $BCK_DIR
mysqldump -u$DB_USER -p$DB_PASS nichuiniu  > $BCK_DIR/$DB_NAME.dump_$DATE.sql
