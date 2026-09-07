do
	$$
	declare
	my_int integer = 1;
	my_text text := 'Hello World';
	my_bool boolean := true;
	begin
		my_int := my_int + 10;
		my_text := my_text || ' how are you?';
		my_bool := not my_bool;
		raise notice 'my_int = %', my_int;
		raise notice 'my_text = %', my_text;
		raise notice 'my_bool = %', my_bool;
	end;
	$$;
