-- dynamically generate SQL statement
-- based on user input

create table customers(
     id serial primary key,
     first_name varchar(255) not null,
     last_name varchar(255) not null,
     email varchar(255) not null);

insert into customers(firt_name, last_name, email) values
     ('Foo','Bar', 'foo_bar@example.com'),
     ('Mike', 'Taylor', 'mike_taylor@example.com'),
     ('John', 'Smith', 'john_smith@example.com');

create or replace function get_customer_data(
     p_first_name varchar, p_last_name varchar)
     returns table (id integer, first_name varchar,
          last_name varchar, email varchar) as $$
begin
     return query execute 'select id, first_name, last_name,
          email from customers
          where first_name = '''|| p_first_name ||'''
          and last_name = '''|| p_last_name ||''';';
end;
$$ language plpgsql;

select * from get_customer_data('Foo', 'Bar');


