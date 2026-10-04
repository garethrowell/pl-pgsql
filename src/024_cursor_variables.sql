
drop table if exists emp;

create table emp(
	emp_id int,
	emp_name varchar,
	emp_salary numeric
);

insert into emp
     values(100, 'SCOTT', '10000.00');
insert into emp
     values(100, 'ROBERT', '50000.00');

do $$
declare 
     my_cursor refcursor;
     my_record emp%rowtype;
begin
     open my_cursor for select * from emp;
     fetch my_cursor into my_record;

     raise notice 'emp_id = %', my_record.emp_id;
     raise notice 'emp_name = %', my_record.emp_name;
     raise notice 'emp_salary = %', my_record.emp_salary;

     fetch my_cursor into my_record;

     raise notice 'emp_id = %', my_record.emp_id;
     raise notice 'emp_name = %', my_record.emp_name;
     raise notice 'emp_salary = %', my_record.emp_salary;

     close my_cursor;
end;
$$;



