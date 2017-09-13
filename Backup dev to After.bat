@echo off

set database=nomina
set backupFile=dev.after.backup.sql

echo Backup %database% to %backupFile%
mysqldump -u dev %database% > "C:\Nomina MySql\%backupFile%"