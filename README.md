# Flyway commands
- flywayway info
- flyway migrate
- flyway repair
- flyway validate, to check if any of the existing migration scripts was updated
- flyway custom config file, e.g. to execute scripts in compare DB
```sql
flyway -configFiles=conf\payrollCompare.conf info
```
- Wipe out comparison DB (works like drop and create DB, is just faster)
```sql
flyway -configFiles=conf\payrollCompare.conf clean
```

- Migrate scripts up to version 5 (intentionally avoid migrating to never version)
```sql
flyway -configFiles=conf\payrollCompare.conf target=5 migrate
```

# Creating an SQL of current Prod DB
- Use mysqldump and set up to get the Schema, not data
```sql
mysqldump -u dev sakila --routines -no-data --skip-add-drop-table --skip-quote-names > sql\V001__baseline.sql
```

#Flyway articles, documentation
- https://flywaydb.org/documentation/concepts/migrations#sql-based-migrations

# DB reverse engineering - DB Schema compare tools
## MySQL
- Toad for MySql
## PostgreSQL
- PostgresCompare, https://dbmstools.com/tools/postgrescompare#schema-compare-tools
