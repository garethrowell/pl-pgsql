create or replace function pl.factorial(num integer)
returns integer as $$
declare
  result integer := 1;
begin
	<<factorial_loop>>
	for i in 1..num loop
		result := result * i;
	end loop factorial_loop;
	return result;
end;
$$ language plpgsql;


