-- using array_ndims()
do
$$
declare
     v_arr text[][] := array[['ONE', 'TWO', 'THREE'],
          ['FOUR', 'FIVE', 'SIX']];
begin
     raise notice 'Array dimensions are %',
          array_ndims(v_arr);
end;
$$;

