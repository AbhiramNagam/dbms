create database university_management;
drop table university_management.students;
create table university_management.students(
	reg_num int NOT NULL primary key,
    firstName varchar(255) NOT NULL,
    lastName varchar(255) NOT NULL,
    section varchar(2) NOT NULL,
    hobbies varchar(255) default 'hacking' ,
    age int  ,
    check (age>=18),
    luckyNum int unique 
);
insert into university_management.students values(1,"abhiram","nagam","H","[]",17,1234);
insert into university_management.students values(1,"abhiram","nagam","H","[]",25,1234);
insert into university_management.students values(2,"rk","khti","A","{}",20,1235);
insert into university_management.students values(3,"abhiram","nagam","H",22,null,null);
insert into university_management.students values(4,"abhiram","nagam","H","[]",19,1236);

select * from university_management.students;

create table university_management.faculty(
	ssn int NOT NULL primary key,
    firstName varchar(255) NOT NULL,
    lastName varchar(255) NOT NULL,
    salary int  NOT NULL,
    hobbies varchar(255) default 'databases',
    best_student  int not null ,
    foreign key(best_student) references university_management.students(reg_num)
);
drop table university_management.faculty;
select * from university_management.faculty;

insert into university_management.faculty values(1001,"sb","cpp",1234567,'teaching',1);
insert into university_management.faculty values(1002,"ab","python",147,'learning',1);
insert into university_management.faculty values(1003,"ab","python",147,'learning',2);
