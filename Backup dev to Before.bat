@echo off

set database=nomina
set backupFile=dev.before.backup.sql

echo Backup %database% to %backupFile%
mysqldump -u dev %database% > %backupFile%