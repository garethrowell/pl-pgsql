do
$$
declare 
     v_arr int[] = NULL;
     i int := 0;
begin
     if v_arr IS NULL then
          raise notice 'Array is null';
          return;
     end if;
     foreach i in array v_arr loop
          raise notice '%', i;
     end loop;
end;
$$;
