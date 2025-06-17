USE college2;

select * from students;


select max(marks) from students;

select min(marks) from students;

select avg(marks) from students;

select count(marks) from students;

select sum(marks) from students;


select course, count(student_id) from students group by course ;

select course , max(marks) from students group by course order by course ;

-- select * from students; 




CREATE TABLE payment (
    id INT PRIMARY KEY,
    customer VARCHAR(100),
    city VARCHAR(50),
    mode VARCHAR(50) 
);


INSERT INTO payment (id, customer, city, mode) VALUES
(1, 'Amit Sharma', 'Mumbai', 'UPI'),
(2, 'Priya Mehta', 'Delhi', 'Cash'),
(3, 'Rohit Verma', 'Bangalore', 'Credit Card'),
(4, 'Sneha Das', 'Pune', 'Net Banking'),
(5, 'Karan Thakur', 'Hyderabad', 'UPI'),
(6, 'Divya Patil', 'Chennai', 'Debit Card'),
(7, 'Nikhil Rao', 'Ahmedabad', 'UPI'),
(8, 'Anjali Gupta', 'Kolkata', 'Cash'),
(9, 'Harshit Jain', 'Jaipur', 'Net Banking'),
(10, 'Pooja Rani', 'Lucknow', 'Credit Card'),
(11, 'Vikram Singh', 'Surat', 'Cash'),
(12, 'Kiran Nair', 'Bhopal', 'UPI'),
(13, 'Simran Kaur', 'Chandigarh', 'Debit Card'),
(14, 'Rahul Yadav', 'Patna', 'Net Banking'),
(15, 'Neha Sinha', 'Indore', 'Credit Card');


SELECT * FROM payment;

select mode, count(customer) from payment group by mode order by count(mode) desc ;








