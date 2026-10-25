-- create a domain subcategory for toys

create type products_type as
     (id text, category text, sku int, price real);

create domain toys_type products_type
     check((value).category = 'toys');

create table toys_products(t toys_type);

-- test it

insert into toys_products
     values(('dfd89','toys', 10, 20.20));

-- the above should work

insert into toys_products
     values(('dfd99','books', 10, 15.20));

-- the above should throw error



