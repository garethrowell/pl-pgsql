
create type all_fields_base
     as (a int, b text, c date);

\d all_fields_base;

do
%%
declare
     v_composite all_fields_base;
begin
     -- data type casting operator ::
     v_composite := (1, 't', current_date) :: all_fields_base;
     raise notice '%', v_composite;
end;
$$;


