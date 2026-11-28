
create table documents(
     id serial primary key,
     content jsonb
);

insert into documents(content)
     values('
     {"title":"My document", "content":"This is my document",
     "metadata":{"tags":["postgresql","json"],
     "views":100}}
     ');

select content ->> 'title' as title,
     content ->> 'content' as content,
     content #> '{metadata, tags}' as tags,
     content #>> '{metadata, views}' as views
     from documents;



