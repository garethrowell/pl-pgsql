select(data ->> 'name')::varchar as name,
     (data ->> 'age')::int as age
     from test_table;


