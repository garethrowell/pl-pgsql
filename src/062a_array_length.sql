-- example of array_length function
-- which uses the lowest and highet index
-- values to calculate the length
-- as shown in part b

do
$$
declare
     v_arr text[] := array['ONE','TWO','THREE'];

begin
     v_arr[0] = 'ZERO';
     
     raise notice 'Length of array is %', 
          array_length(v_arr, 1);
	
end;
$$;

