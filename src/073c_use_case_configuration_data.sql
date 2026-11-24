
create table configurations(
     id serial primary key,
     data jsonb
);

insert into configurations(data)
     values
     ('{"development":{"database":{"host":"localhost",
       "port":5432}},
      "production":{"database":{"host":"example.com",
       "port":5432}}}');

select data -> 'development' -> 'database' -> 'host' 
     as dev_host,
     data -> 'production' -> 'database' -> 'host'
     as prod_host
     from configurations;

