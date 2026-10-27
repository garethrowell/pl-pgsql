
-- range types can be used for time ranges,
-- numeric ranges, geographic ranges, text ranges

create table fleet_mileage(
     gasoline_id int,
     vehicle_id int,
     readings numrange);

insert into fleet_mileage values
     (1, 1, numrange(1455.2, 1567.5, '[]')),
     (1, 2, numrange(1255.2, 1374.5, '[]')),
     (1, 3, numrange(1137.2, 1259.6, '[]'));

select *, upper(readings) - lower(readings) as mileage
     from fleet_mileage
     order by 4 descç


