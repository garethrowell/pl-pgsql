
-- PostgreSQL has the following string types:
--      char(n) - for fixed n characters
--      varchar(n) - where n is maximum length
--      text - for unknown variable length
--
-- There are no performance differences between
-- the types. Use the model design to select which type.

-- The following generates a large table using char(n)

-- create table test (t char(126));

-- insert into test values ('a');

-- select pg_column_size(t) from test;

-- size is 127 bytes

-- use this to quickly generate a big table...

create table big_table (t char(100000));

insert into big_table values ('a');

insert into big_table select * from big_table;

insert into big_table select * from big_table;

insert into big_table select * from big_table;

-- then examine

select count(*) from big_table;

\dt+ big_table


