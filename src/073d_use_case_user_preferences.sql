
create table user_preferences(
     id serial primary key,
     preferences jsonb
);


insert into user_preferences(preferences)
     values('
     {"news_feed":{"show_images":true, "show_videos":true},
      "notifications":{"email":true, "push":false}}
     ');

select preferences -> 'news_feed' -> 'show_images'
     as show_images,
     preferences -> 'notifications' -> 'email'
     as email
     from user_preferences;


