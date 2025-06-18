CREATE TABLE classroom (
  class_id INT PRIMARY KEY,
  class_name VARCHAR(50)
);

CREATE TABLE stud (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  class_id INT,
  FOREIGN KEY (class_id) REFERENCES classroom(class_id)
);


INSERT INTO classroom VALUES
(1, 'Class A'),
(2, 'Class B'),
(3, 'Class C');



INSERT INTO stud VALUES
(101, 'Rahul', 1),
(102, 'Priya', 2),
(103, 'Aman', 3);


select * from stud;



