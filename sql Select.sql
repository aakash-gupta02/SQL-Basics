CREATE DATABASE college2;

USE college2;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

select * from students;



INSERT INTO students (student_id, name, age, course, marks) VALUES
(1, 'Amit Sharma', 20, 'Computer Science', 85),
(2, 'Priya Mehta', 21, 'Electronics', 78),
(3, 'Rohit Verma', 22, 'Mechanical', 65),
(4, 'Sneha Das', 19, 'Computer Science', 90),
(5, 'Vikram Singh', 23, 'Civil', 72),
(6, 'Anjali Gupta', 20, 'Information Technology', 88),
(7, 'Nikhil Rao', 21, 'Electrical', 60),
(8, 'Kiran Nair', 22, 'Mechanical', 75),
(9, 'Divya Patil', 20, 'Computer Science', 92),
(10, 'Harshit Jain', 19, 'Electronics', 80);







select distinct course from students  ;


select * from students limit 3 ;

select * from students where course  in ("Civil");

select * from students where course not in ("Civil", "Mechanical" );


select * from students where marks between 80 and 90;

select * from students where marks+20 >  100 and 110; 

select * from students order by marks desc;












