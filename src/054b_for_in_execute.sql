do
$$
declare
     v_rec record;
begin
     for v_rec in execute 'select * from test where t=$1' 
          using 1 loop
          raise notice 'Record ...%', v_rec;
     end loop;
end;
$$;

