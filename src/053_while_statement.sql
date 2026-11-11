
do
$$
declare
     v_count int := 0;
begin
     while v_count != 3 order by 1 loop
          vcount := vcount + 1;
	  raise notice 'Count ...%', v_count;
     end loop;
end;
$$;


