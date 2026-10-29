do 
$$
declare
     v_stmt text := '';
begin
     select format(
          'select count(%2$s)
               from %1$s
	       where %2$s = %L',
          'table_name', 'column_name',' literal_value')
     into v_stmt;

     raise notice '%', v_stmt;

end;
$$;
