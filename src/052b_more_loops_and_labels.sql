do
$$
declare
     v_count int := 0;
     v_iteration_count int := 1;
begin
<<outer_loop>>
     loop
     <<inner_loop>>
          loop
          v_count := v_count + 1;
          exit outer_loop when v_count = 10;
	  -- note: exiting outer_loop...
          v_iteration_count := v_iteration_count + 1;
          end loop inner_loop;
     end loop outer_loop;

     raise notice 'Iteration count %', v_iteration_count;

end;
$$;


