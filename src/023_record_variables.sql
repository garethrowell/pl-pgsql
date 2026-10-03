
-- setting up

create table if not exists emp(
	emp_id int,
	emp_name varchar,
	emp_salary numeric
	);
insert into emp values (1001, 'Scott', '10000.00');

do $$
	declare 
	-- record variable
	my_record emp%rowtype;
	begin
		-- load row into record variable
		select * into my_record from emp
		     where emp_id = 1001;
		raise notice 'emp_id = %', my_record.emp_id;
		raise notice 'emp_name = %', my_record.emp_name;
		raise notice 'emp_salary = %', my_record.emp_salary;

		-- update values into record variable
		my_record.emp_name := 'Smith';
		my_record.emp_salary := '50000';

		-- update row in table
		update emp 
		set emp_name = my_record.emp_name,
		emp_salary = my_record.emp_salary
		where emp_id = 1001;
	end;
	$$;


