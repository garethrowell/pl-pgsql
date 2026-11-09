
drop table if exists test;

create table test(t int);

insert into test values(generate_series(1,3));

do
$$
declare
     v_rec record;
begin 
     for v_rec in (select * from test) loop
          raise notice 'Record ...%', v_rec;
     end loop;
end;
$$;



