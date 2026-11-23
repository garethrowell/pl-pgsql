
create table images(
     id serial primary key,
     metadata jsonb
);

insert into images(metadata)
     values
     ('{"resolution": "1920x1080", "size": "2MB",
        "created on": "2022-01-01"}');

select metadata->>'resolution' as resolution,
     metadata->>'size' as size
     from images;


