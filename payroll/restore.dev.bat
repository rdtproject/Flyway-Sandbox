@echo off

set database=payroll
set dropAndCreate="DROP DATABASE IF EXISTS %database%; CREATE DATABASE %database%;"

echo %dropAndCreate%
mysql -u rdt -e %dropAndCreate%

echo Restoring %database%
mysql -u rdt %database% < dev.backup.sql