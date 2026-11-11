drop table if exists products;
drop table if exists users;

create table users(
     id serial primary key,
     name varchar(50),
     email varchar(100),
     balance numeric
);

insert into users(name, email, balance) values
     ('John Doe', 'john.does@example.com', 100),
     ('Jane Smith', 'jane.smithj@example.com', 50);

create table products(
     id serial primary key,
     name varchar(50),
     price  numeric,
     category varchar(50)
);

insert into products(name, price) values
     ('Product A', 5),
     ('Product B', 15),
     ('Product C', 30),
     ('Product D', 60);


create or replace function categorize_products()
returns void as $$

declare
     product_price numeric;
     product record;

begin
     -- loop through all the products and categorize them
     -- based on price range

     for product in select * from products loop
          product_price := product.price;

          case
               when product_price <= 10 then
               update products
                    set category = 'low-priced'
                    where id = product.id;

               when product_price > 10
                    and product_price <= 50 then
               update products
                    set category = 'medium-priced'
                    where id = product.id;

               else
               update products
                    set category = 'high-priced'
                    where id = product.id;
          end case;

     end loop;

end;
$$ language plpgsql;

