-- using array_dims function
do
$$
declare
     v_arr text[][] := array[['ONE', 'TWO', 'THREE'],
          ['FOUR', 'FIVE', 'SIX']];
begin
     raise notice 'Array dimensions are  %',
          array_dims(v_arr);
end;
$$;

