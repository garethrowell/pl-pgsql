
-- create a domain that is text with 8 or fewer characters

create domain tiny_text text
     constraint tiny_text_length_constraint
          check(length(value) < 9);

create table preferences(short_userid tiny_text, 
     short_password tiny_text);

-- test

insert into preferences values('a0bef74', 'i8911k');

-- the above should work

insert into preferences values('this is a big user id', 'this is a big password');

-- this should throw an error


