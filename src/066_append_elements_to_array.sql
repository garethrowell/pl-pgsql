do
$$
declare
     v_arr text[] := array['ONE', 'TWO', 'THREE'];

begin
     v_arr := array_append(v_arr, 'FOUR');
     raise notice 'array after element is %', v_arr;

end;
$$;


