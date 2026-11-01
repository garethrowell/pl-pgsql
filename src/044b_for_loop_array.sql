do
$$
declare
     my_array integer[] := '{1, 2, 3}';
     total integer := 0;
begin
     for i in 1..array_length(my_array, 1) loop
	     total := total + my_array[i];
     end loop;

     raise notice 'total of thh elements in my_array is: %', 
          total;
end;
$$;
