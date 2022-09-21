create database university_ar;
use university_ar;
drop table student;
create table student(
	reg_num int,
    fname varchar(255),
    lname varchar(255),
    section int,
    preferredLanguage varchar(255)
);
alter table student add percentage int;
alter table student drop percentage;
select * from student; 
insert into student values(11,'bhanu','prakash',18,'java');
truncate table student;

alter table student rename std;
select * from std;
alter table std rename student;
select * from student;

insert into student values(11,'bhanu','prakash',18,'java');
insert into student values(12,'ram','prakash',18,'python');
insert into student values(13,'shiva','!',18,'c-sharp');
insert into student values(14,'chaitanya','tumma',18,'java');
insert into student values(15,'bharat','tungala',18,'bash');
select * from student;

set sql_safe_updates=0;
 update  student set lname ='varanasi' where reg_num=13 ;
select * from student;

delete from student where reg_num=13;
select * from student;
