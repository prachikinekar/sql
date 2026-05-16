-- check,enum
--  --------------------------

use batch730pmapr;
show tables;

select * from students;

create table students(
full_name varchar(20) not null,
email_id varchar(20),
phone varchar(20),
age int not null default 18,
check (age between 18 and 60
));

desc students;

show create table students;

insert into students 
(full_name,email_id,phone, age)
values
("rohit sharma" , "rohit@gmail.com", 123456, 18);

select * from students;

insert into students values("Krish","krish1234@gmail.com",3455,20),
("prachi","prachi12@gmail.com",343355,21);

desc students;

insert into students 
(full_name,email_id,phone, age) values
("kavita","kavi@124",90878,19);

insert into students 
(full_name,email_id,phone, age)
values
("geeta rani" , "geets@gmail.com", 123456789, 45);
-- ------------------
create table student(
full_name varchar(20) not null,
email_id varchar(20),
phone_no int,
age int not null default 18 check(age between 18 and 60));

insert into student values
( "prachik","prac12@gmail.com",9876543,22),
( "vaishk","vaishk12@gmail.com",9877777,24);

select * from student;
SET SQL_SAFE_UPDATES = 0;

delete from student where age=22;


delete from student where age =22;

insert into student values
( "prachik","prac12@gmail.com",9876543,22);



drop table student;
desc student;

create table student(
full_name varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18,
check(age>=18 and age<=60));

insert into student values(
"prachik","prachi12@gmail.com","88989999",22),
(
"vaish","vaish@gmail.com","888889999",24),
(
"krish","krish@gmail.com","8778889999",18);

show create table student;
drop table student;

create table student(
full_name varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18,
check(age>=18 and age<=60),
check(char_length(phone)=10)
);

insert into student values
("prachik","prachi12@gmail.com","8898999977",22),
(
"vaish","vaish@gmail.com","8888899998",24),
(
"krish","krish@gmail.com","8778889999",18);

show create table student;
-- 'student', 'CREATE TABLE `student` (\n  `full_name` varchar(20) NOT NULL,\n  `email_id` varchar(20) DEFAULT NULL,\n  
-- `phone` varchar(15) DEFAULT NULL,\n  `age` int NOT NULL DEFAULT \'18\',\n  CONSTRAINT `student_chk_1` CHECK (((`age` >= 18) and (`age` <= 60))),\n  CONSTRAINT `student_chk_2` CHECK ((char_length(`phone`) = 10))\n) 
-- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

insert into student(full_name,email_id,phone,age) values 
("shreya","shreyaC@gmail.com","9987887856",45),
("sarthak","sarthak@gmail.com","9966887856",55);

insert ignore into student (full_name,email_id,phone,age)
values("Riya","Riya@gmail.com","9977878678",45);

insert ignore into student (full_name,email_id,phone,age)
values("sita","shreyaC@gmail.com","8977878678",35);

insert into student (full_name,email_id,phone,age)
values("sita","shreyaC@gmail.com","8977878678",35);

select * from student;
