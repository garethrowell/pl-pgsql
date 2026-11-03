create table products(
     id integer primary key,
     name varchar(255) not null,
     category_id integer not null,
     price numeric(10,2) not null);

create table sales(
     id integer primary key,
     order_id integer not null,
     product_id integer not null,
     quantity integer not null,
     price numeric(10,2),
--   constraint fk_order foreign key (order_id) 
--        references orders(id),
     constraint fk_product foreign key (product_id)
          references products(id));
     
insert into products(id, name, category_id, price) 
     values
     (1, 'Product A', 1, 10.00),
     (2, 'Product B', 1, 15.00),
     (3, 'Product C', 2, 20.00),
     (4, 'Product D', 2, 25.00);

insert into sales (id, order_id, product_id, quantity, price)
     values
     (1, 1, 1, 2, 10.00),
     (2, 1, 2, 1, 15.00),
     (3, 2, 3, 2, 20.00),
     (4, 2, 4, 1, 25.00);


create or replace function
     calculate_total_revenue_by_category
          (p_category_id integer)
     returns numeric as $$

declare 
     total_revenue numeric := 0;

begin
     select sum(s.price * s.quantity) into total_revenue
     from products p
     join sales s
     on p.id = s.product_id
     where p.category_id = p_category_id;

     return total_revenue;

end;
$$ language plpgsql;

-- test the function

select calculate_total_revenue_by_category(1);



