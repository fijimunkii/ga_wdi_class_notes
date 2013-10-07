# Postgres Cheatsheet

connect to postgres

```
  $ psql
```

list databases

```
postgres=# \l
```

create database

```
postgres=# CREATE DATABASE database_name;
```


drop database

```
postgres=# DROP DATABASE database_name;
```

connect to database

```
postgres=# \c database_name;
```

list columns on table

```
database_name=# \d table_name;
```

create table via command line

```
database_name=# CREATE TABLE table_name (
database_name(# column_name DATA_TYPE,
database_name(# column_name DATA_TYPE
database_name(# );
```

[postgres datatypes](http://www.postgresql.org/docs/9.3/static/datatype.html#DATATYPE-TABLE)

run file from command line

```
$ psql -d database_name -f create_table_file.sql
```

Comment Code

```
/*
C-like comment
Multi-lines 
*/

-- or single line
```

create table options

```
CREATE TABLE table_name (
  id SERIAL8 PRIMARY KEY,
  column_name DATA_TYPE NOT NULL,
  column_name DATA_TYPE DEFAULT value,
  column_name DATA_TYPE CHECK (column_name < value),
  column_name DATA_TYPE UNIQUE
);
```

create join table

```
CREATE TABLE join_table (
  id serial4 primary key,
  table1_singular_name_id int4 references table1_name(id),
  table2_singular_name_id int4 references table2_name(id)
);
```