
drop table if exists sales;

drop table if exists products;

create table products(
     id integer primary key,
     name varchar(255) not null,
     price numeric(10,2) not null);

create table sales(
     id integer primary key,
     sale_date date not null,
     product_id integer not null
          references products(id),
     quantity integer not null,
     price numeric(10,2) not null);

insert into products (id, name, price)
     values
     (1, 'Product A', 10.00),
     (2, 'Product B', 15.00),
     (3, 'Product C', 20.00),
     (4, 'Product D', 25.00);

insert into sales (id, sale_date, product_id, 
     quantity, price) values
     (1, '2021-01-01', 1, 2, 10.00),
     (2, '2021-01-01', 2, 1, 15.00),
     (3, '2021-02-01', 3, 2, 20.00),
     (4, '2021-02-01', 4, 1, 25.00);

create or replace function get_top_selling_products
     (p_month integer)
     returns table (product_id integer, total_sales numeric)
     as $$

declare
     product_ids integer[] := (
          select array_agg(distinct sales.product_id)
          from sales
	  where extract(month from sale_date) = p_month);

begin
     return query
          select s.product_id, sum(s.price * s.quantity)
	       as total_sales
	  from sales s
	  where s.product_id = any(product_ids)
	  group by s.product_id
          order by total_sales desc limit 10;

end;
$$ language plpgsql;

-- test function

select * from get_top_selling_products(1);

select * from get_top_selling_products(2);


