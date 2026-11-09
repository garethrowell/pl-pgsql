
do
$$
declare
     v_arr int[] = array[1, 2, 3];
     i int := 0;
begin
     foreach i in array v_arr loop
          raise notice '%', i;
     end loop;
end;
$$;


