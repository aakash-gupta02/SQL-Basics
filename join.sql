CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100)
);


INSERT INTO courses (course_id, course_name) VALUES
(1, 'Python'),
(2, 'JavaScript'),
(3, 'SQL'),
(4, 'C++');




CREATE TABLE students1 (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  course_id INT
);


INSERT INTO students1 (student_id, name, course_id) VALUES
(101, 'Rahul', 1),
(102, 'Priya', 2),
(103, 'Aman', 3),
(104, 'Sneha', 2),
(105, 'Ravi', 1),
(106, 'Neha', NULL); -- Student not enrolled



select * from students1;
select * from courses;


select * 
from students1 
inner join courses
on students1.course_id = courses.course_id;


select * 
from students1 
left join courses
on students1.course_id = courses.course_id;

select * 
from students1 
right join courses
on students1.course_id = courses.course_id;


select * 
from students1 
left join courses
on students1.course_id = courses.course_id
union
select * 
from students1 
right join courses
on students1.course_id = courses.course_id; 




# exlucsive right or left join 



select * 
from students1 as a 
left join courses as b
on a.course_id = b.course_id
where b.course_id is null;




select * 
from students1 as a 
right join courses as b
on a.course_id = b.course_id
where a.course_id is null
union
select * 
from students1 as a 
left join courses as b
on a.course_id = b.course_id
where b.course_id is null;



# self join 

CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  manager_id INT
);




INSERT INTO employees (id, name, manager_id) VALUES
(1, 'Amit', NULL),         #  Top-level manager (CEO)
(2, 'Riya', 1),
(3, 'Karan', 1),
(4, 'Sneha', 2),
(5, 'Ravi', 2),
(6, 'Anjali', 3),
(7, 'Pooja', 3),
(8, 'Nikhil', 4);



select * from employees;

select a.name as manager_name, b.name 
from employees as a
join employees as b
on a.id = b.manager_id;



show databases;




use college2;
show tables;

select * from students;

select avg(marks) from students;

select name, marks from students where marks > 82.5000;

select * from students where marks > (select avg(marks) from students   ) order by marks desc limit 3 ;


select * from students where student_id % 2 = 0;

select max(marks) from students where course = "Civil" ;

create view view1 as select age from students;

create view view2 as select name,age,marks from students;

select * from view2;

select * from view1;











