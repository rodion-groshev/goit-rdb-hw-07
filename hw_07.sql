use hw3;

select id, date, year(date) as year, month(date) as month, day(date) as day  from orders;

select id, date, date + interval 1 day as date_plus_1 from orders;
select id, date, date_add(date, interval 1 day) as date_plus_1 from orders;

select id, date, unix_timestamp(date) from orders;

select count(id) as total_quantity from orders where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00' ;

select id, date, json_object('id', id, 'date', date) from orders;