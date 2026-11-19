-- 1st index is row
-- 2nd index is column

do
$$
declare
     v_arr text[][] := array[['ONE', 'TWO', 'THREE'],
          ['FOUR', 'FIVE', 'SIX']];
begin
     raise notice 'Element at row1 and column2 is %',
          v_arr[1][2];
end;
$$;

