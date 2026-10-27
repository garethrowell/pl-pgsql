
-- these types serve internal purposes
-- and cannot be used directly as data types:
-- void, any, trigger, opaque, record

-- pseudotype errors from void

create table test_table (v void);

-- the above throws error

do
$$
declare
     t void
begin 
     t:= '';
end;
$$;

-- this throws pseudotype error



