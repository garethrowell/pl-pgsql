
-- multirange types: applications - non-overlapping
-- values such as time series analysis
-- event scheduling and resource allocation

create table fleet_mileage(
     gasoline_id int,
     vehicle_id int,
     readings nummultirange);

insert into fleet_mileage values
     (1, 1, nummultirange(numrange(1455.2, 1567.5, '[]'),
          numrange(1655.2, 1767.5, '[]'))),
     (1, 1, nummultirange(numrange(1255.2, 1355.5, '[]'))),
     (1, 1, nummultirange(numrange(1155.2, 1250.5, '[]'),
          numrange(1367.2, 1450.5, '[]')));

select *, upper(readings) - lower(readings) as mileage
     from fleet_mileage
     order by 4 desc;


