do $$
	declare
	my_array integer[] := '{1, 2, 3, 4, 5}';
	begin
		raise notice 'my_array = %', my_array;
		raise notice 'my_array[2] = %', my_array[2];
		my_array[3] := 10;
		raise notice 'my_array = %', my_array;
	end;
	$$;


