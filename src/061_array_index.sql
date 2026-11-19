do
$$
declare
     v_arr text[] := array['ONE', 'TWO', 'THREE'];

begin
     raise notice '0-based index is %', v_arr[0];
     -- v_arr[0] should be NULL
     raise notice '1-based index is %', v_arr[1];

end;
$$;
