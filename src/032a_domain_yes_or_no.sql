
-- domain restricted to yes or no

select 'YES'::information_schema.yes_or_no;

-- the above should work

select 'true'::information_schema.yes_or_no;

-- the above should throw an error


