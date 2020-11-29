# Flyway commands
- flywayway info
- flyway migrate
- flyway repair
- flyway custom config file, e.g. to execute scripts in compare DB
```sql
flyway -configFiles=conf\payrollCompare.conf info
- Wipe out comparison DB (works like drop and create DB, is just faster)
```sql
flyway -configFiles=conf\payrollCompare.conf clean
```

```
# DB reverse engineering - DB Schema compare tools
## MySQL
- Toad for MySql
## PostgreSQL
- PostgresCompare, https://dbmstools.com/tools/postgrescompare#schema-compare-tools
