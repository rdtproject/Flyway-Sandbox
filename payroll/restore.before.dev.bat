@echo off

set database=payroll
set dropAndCreate="DROP DATABASE IF EXISTS %database%; CREATE DATABASE %database%;"
set backupFile=dev.backup.before.sql

echo %dropAndCreate%
mysql -u rdt -e %dropAndCreate%

echo Restoring %database% from %backupFile%
mysql -u rdt %database% < %backupFile%