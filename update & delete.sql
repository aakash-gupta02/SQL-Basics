
use college2;

set sql_safe_updates=0;


update students set age = 0 where age < 21;
select * from students;

update students set age = age + 1 where age = 20;

select * from students;

delete from students where marks < 70;

show tables;

start transaction;

delete from students;
select * from students;

rollback;

select * from students;

SELECT @@autocommit;

SET autocommit = 0;

