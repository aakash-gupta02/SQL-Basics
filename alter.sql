CREATE TABLE stud3 (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  city VARCHAR(50),
  marks INT
);


INSERT INTO stud3 (id, name, age, city, marks) VALUES
(1, 'Rahul', 18, 'Mumbai', 85),
(2, 'Priya', 19, 'Delhi', 92),
(3, 'Aman', 20, 'Pune', 78),
(4, 'Sneha', 18, 'Chennai', 88),
(5, 'Ravi', 21, 'Kolkata', 67),
(6, 'Neha', 22, 'Bangalore', 95),
(7, 'Karan', 20, 'Hyderabad', 74),
(8, 'Pooja', 19, 'Ahmedabad', 81);





alter table stud3 add column grade char(1);

alter table stud3 drop column grade;

alter table stud3 rename to stu;



alter table stu change id stu_id int;

SELECT * FROM stu;


alter table stu
change name full_name varchar(50);

delete from stu
where marks < 80;

alter table stu
drop age;




















