
-- iterate array with foreach

do
$$
declare
     v_arr text[] := array['ONE', 'TWO', 'THREE'];
     v_element text;
begin
     foreach v_element in array v_arr loop
          raise notice 'Element is %', v_element;
     end loop;
end;
$$;

