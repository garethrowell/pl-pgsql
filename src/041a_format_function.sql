
-- function "format" can be used to print dynamic
-- SQL statements

do
$$
declare
     v_stmt text := '';
     v_rec record;
begin
     for v_rec in (
          select table_name
	  from information_schema.tables
	  where table_schema != 'pg_catalog'
	  limit 4) loop
     raise notice '%' format(
          'select count(*)
	  from %I', v_rec.table_name);
     end loop;
end;
$$;

