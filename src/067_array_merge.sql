-- using array_cat function
do
$$
declare
     v_arr1 text[] := array['ONE', 'TWO','THREE'];
     v_arr2 text[] := array['FOUR', 'FIVE','SIX'];

begin
     raise notice 'merged array is %', 
          array_cat(v_arr1, v_arr2);

end;
$$;
