insert into test_table(data)
     values
     ('{"name":["foo", "bar"], "age":[40, 50]}');

select * from test_table;

-- in the following, #> results in JSON while
-- #>> results in text

select data#>'{name, 0}' as name,
     data#>'{age, 0}' as age
     from test_table where id = 2;

select pg_typeof(data#>'{name, 0}') as name,
     pg_typeof(data#>'{age, 0}') as age
     from test_table where id = 2;


select data#>>'{name, 0}' as name,
     data#>>'{age, 0}' as age
     from test_table where id = 2;

select pg_typeof(data#>>'{name, 0}') as name,
     pg_typeof(data#>>'{age, 0}') as age
     from test_table where id = 2;


