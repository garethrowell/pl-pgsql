drop table if exists transactions;
drop table if exists users;

create table users(
     id serial primary key,
     name varchar(50),
     email varchar(100),
     balance numeric
);

create table transactions(
     id serial primary key,
     user_id integer references users(id),
     amount numeric
);

insert into users(name, email, balance) values
     ('John Doe', 'john.does@example.com', 100),
     ('Jane Smith', 'jane.smithj@example.com', 50);

insert into transactions(user_id, amount) values
     (1, 10),
     (2, 20);

create or replace function process_payments(
     user_id integer,
     transaction_amount numeric)
returns void as $$

declare
     user_balance numeric;

begin
     -- get user balance from database
     select balance into user_balance
     from users where id = user_id;

     -- check if user has sufficient funds
     if user_balance > transaction_amount then

     -- deduct transaction from user balance
	  update users 
               set balance = balance - transaction_amount
               where id = user_id;

     -- process the payment
          insert into transactions(user_id, amount) values
               (user_id, transaction_amount);
     
     else
     -- display error message
     raise exception 'Insufficient funds.';
     end if;
end;
$$ language plpgsql;


