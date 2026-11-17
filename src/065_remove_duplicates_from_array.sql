
do
$$
declare
     v_arr text[] := array['ONE', 'TWO', 'THREE', 'TWO',
          'FOUR', 'ONE'];
     v_dup text[];

begin
     for idx in 1..array_length(v_arr, 1) loop
          if v_arr[idx] = any(v_dup) then
               raise notice 'Found duplicate %', v_arr[idx];
          else v_dup := v_dup||v_arr[idx];
          end if;
     end loop;
end;
$$;
