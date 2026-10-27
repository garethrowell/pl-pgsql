
-- room reservations at a hotel

create type room_reserve_ts_range as range
     (subtype=timestamp);

create table room_bookings(
     id int,
     guest_name text,
     booking_dates room_reserve_ts_range);
     
insert into room_bookings values 
    (1, 'Scott', '[2023-03-22 00:00, 2023-03-25 10:00]'),
    (2, 'George', '[2023-03-20 00:00, 2023-03-25 10:00)'),
    (3, 'Denis', '[2023-03-15 00:00, 2023-03-23 10:00)');

select guest_name
     from room_bookings
     where booking_dates @> '2023-03-21'::timestamp;



