do
$$
declare
     v_arr int[] = array[[1, 2, 3],[4, 5, 6]];
     i int[];
begin
     foreach i slice 1 in array v_arr loop
          raise notice '%', i;
     end loop;
end;
$$;
