do
$$
declare
     my_array integer[] := '{1, 2, 3}';
     second_element integer;
begin
     second_element := my_array[2];

     raise notice 'second element from my_array is: %',
          second_element;
end;
$$;


