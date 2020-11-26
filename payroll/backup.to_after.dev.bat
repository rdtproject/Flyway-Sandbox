@echo off

set database=payroll
set backupFile=dev.backup.after.sql

echo Backup %database% to %backupFile%
mysqldump -u rdt %database% > %backupFile%