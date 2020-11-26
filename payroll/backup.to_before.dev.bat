@echo off

set database=payroll
set backupFile=dev.backup.before.sql

echo Backup %database% to %backupFile%
mysqldump -u rdt %database% > %backupFile%