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
 group by address_id;
SELECT c.name, AVG(p.point) AS avg_point
FROM course c
JOIN point p ON c.id = p.course_id
GROUP BY c.id, c.name
HAVING AVG(p.point) = (
  SELECT MAX(avg_point)
  FROM (
	   SELECT AVG(point) AS avg_point
	   FROM point
	   GROUP BY course_id
  ) AS subquery
);
	
