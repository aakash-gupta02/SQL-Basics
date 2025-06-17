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
