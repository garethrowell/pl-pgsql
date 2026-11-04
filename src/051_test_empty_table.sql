
-- optimal test for empty table

drop table if exists test1;

drop table if exists test2;

create table test1(
     id integer,
     name text
);

create table test2(
     id integer,
     name text
);

insert into test2 (id, name) values (1, 'Test');

do 
$$
begin
     if exists(select * from test1) then
          raise notice 'test1 is not empty'
     end if;
end;
$$;

do 
$$
begin
     if exists(select * from test2) then
          raise notice 'test2 is not empty'
     end if;
end;
$$;

