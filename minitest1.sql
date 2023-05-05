select avg(point)
from point;
select  count(fullname),classes.name
from students 
INNER join classes
on students.classes_id = classes.id 
group by classes_id;
select * from students
where fullname like "nguyễn%";
select * from students
where fullname like "%a";
select * from students
where age between 18 and 25;
select * from students
where id = 10 or id = 1;
 select count(fullname),address.address
 from students
 inner join address 
 on students.address_id = address.id
 group by address_id