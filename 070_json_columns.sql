
create table test_table(
     id serial primary key,
     data json
);

insert into test_table (data)
     values('{"name":"my_name", "age":30}');

select data -> 'name' as name, data -> 'age' as age
     from test_table;

select pg_typeof(data -> 'name') as name,
     pg_typeof(data -> 'age') as age
     from test_table;


