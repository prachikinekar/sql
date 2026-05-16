

-- Enum constraint
-- -----------------
-- It restricts a column to predefined values only.
-- “Only allow values from this list.”

use batch730pmapr;
show tables;

 show create table student;
 -- 'student', 'CREATE TABLE `student` (\n  `full_name` varchar(20) NOT NULL,\n  `email_id` varchar(20) DEFAULT NULL,\n 
 -- `phone` varchar(15) DEFAULT NULL,\n  `age` int NOT NULL DEFAULT \'18\',\n  CONSTRAINT `student_chk_1` CHECK (((`age` >= 18) and (`age` <= 60))),\n  CONSTRAINT `student_chk_2` CHECK ((char_length(`phone`) = 10))\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

drop table student;

create table student(
full_name varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18,
status ENUM('active', 'passout','suspended')not null ,
gender ENUM('female','male' ,'other')not null,
check (age >= 18 and age <=60),
check (char_length(phone) =10)
);

insert into student values(
"prachi","prac14@gmail.com","7709899893",21 ,'active','female');

select * from student;

delete from student where age =21;
SET SQL_SAFE_UPDATES = 0;

insert into student (full_name,email_id,phone,age) values ("preeti","preeti@gmail.com","9978676756",32);
-- not null works differently in ENUM 
-- not null default 'male' for gender first option in list
-- not null default 'active' for status first option in list

-- --------------------------
drop table student;

create table student(
full_name varchar(20) not null,
email_id varchar(20),
phone varchar(15),
age int not null default 18,
status ENUM('active', 'passout','suspended')not null default "passout" ,
gender ENUM('female','male' ,'other')not null,
check (age >= 18 and age <=60),
check (char_length(phone) =10)
);

show tables;
insert into student (full_name,email_id,phone,age) values("preeti","preeti@gmail","4554322334",23);

select * from student;

create table prachi(
full_name varchar(20) not null,
email_id varchar(20) not null,
age int not null default 18,
status enum("passed","fail","other") default "passed",
check (age between 18 and 35))
;

select * from prachi;
desc prachi;
insert into prachi (full_name,email_id,age )values("prachik","prachi12@gmail.com",21);
insert into prachi (full_name,email_id,age )values("krishk","krish2@gmail.com",31),
("hathi","hathi1@gmauil",34);
insert into prachi (full_name,email_id,age ,status)values("preeti","preeti@gmail.com",21,"fail");

drop table prachi;
show create table prachi;


