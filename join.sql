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






















