do
$$
declare
     v_count int := 0;
     v_iteration_count int := 1;
begin
<<my_loop>>
     loop
     v_count := v_count + 1;
     exit when v_count = 10;
     v_iteration_count := v_iteration_count + 1;
     end loop my_loop;

     raise notice 'Iteration count %', v_iteration_count;

end;
$$;
