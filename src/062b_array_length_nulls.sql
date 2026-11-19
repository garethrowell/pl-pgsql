
do
$$
declare
     v_arr text[] := array['ONE', 'TWO', 'THREE'];

begin
     v_arr[0] = 'ZERO';
     v_arr[10] = 'TEN';
     -- the array index 10 assignment generates
     -- v_arr[1 -> 9] and assigns them to NULLs

     raise notice 'Length of array is %', 
          array_length(v_arr, 1);
     raise notice 'Array values are %', v_arr;

end;
$$;

