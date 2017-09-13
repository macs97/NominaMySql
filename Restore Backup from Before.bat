@echo off

SET database=nomina
SET dropAndCreate="DROP DATABASE IF EXISTS %database%;CREATE DATABASE %database%"
set backupFile=dev.before.backup.sql

echo %dropAndCreate%
mysql -u dev -e %dropAndCreate%

echo Restoring %database% from "C:\Nomina MySql\%backupFile%"
mysql -u dev %database% < "C:\Nomina MySql\%backupFile%"