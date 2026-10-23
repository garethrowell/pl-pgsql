
create type mixed_fields_type as
     (d real, f all_fields_base);

\d mixed_field_type

do
$$
declare
     v_mixed_type mixed_fields_type;
begin
     v_mixed_type := (3.14, (1, 't', current_date) ::
          all_fields_base) :: mixed_fields_type;
     raise notice '%', v_mixed_type;
     raise notice 'Value %, Type %', 
          v_mixed_type.d, pg_typeof(v_mixed_type.d);
     raise notice 'Value %, Type %', 
          v_mixed_type.f, pg_typeof(v_mixed_type.f);
end;
$$;
