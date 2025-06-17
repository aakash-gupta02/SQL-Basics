create database temp1;

CREATE DATABASE tem2;
CREATE DATABASE tem2;
CREATE DATABASE if not exists tem2;

drop database  tem2;
drop database if exists tem2;


drop database tem2; 
drop database temp1;


create database college;

use college;

create table student(
id int primary key,
name varchar(50),
age int not null
);

insert into student values(1,"Sky",20);
insert into student values(2,"Aakash",21);
insert into student values(3,"Aaku",21);



show databases;
show tables;
select * from student;


create database d3;

use d3;

CREATE TABLE delulu (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


insert into delulu values(1,"desginer");
insert into delulu values(2,"developer");

select * from delulu;

create table emp(
id int primary key,
salary int default 20000
);

insert into emp(id) values(
1
);


insert into emp(id) values(2);
insert into emp values(5,10000);

select * from emp;