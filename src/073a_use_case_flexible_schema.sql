

create table survey (
     id serial primary key,
     answers jsonb
);

insert into survey (answers)
     values
     ('{"question1":"answer1", "question2": "answer2"}');

select answers ->> 'question1' as answer1,
     answers ->> 'question2' as answer2
     from survey;

