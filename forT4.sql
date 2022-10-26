create database dbms_lp;
use dbms_lp;
create table location(
	locationID int primary key,
	regionalGroup varchar(255)
    );
insert into location values(122,"NEW YORK");
insert into location values(123,"DALLAS");
insert into location values(124,"CHICAGO");
insert into location values(167,"BOSTON");
select * from location;
create table DEPARTMENT(
	Department_ID int primary key,
	Name varchar(255),
    Location_ID int  ,
    foreign key(Location_ID) references location(locationID)
    );
insert into DEPARTMENT values(10,"ACCOUNTING",122);
insert into DEPARTMENT values(20,"RESEARCH",124);
insert into DEPARTMENT values(30,"SALES",123);
insert into DEPARTMENT values(40,"OPERATIONS",167);
select * from DEPARTMENT;

create table JOB(
	Job_ID int primary key,
    _Function varchar(255)
    );
insert into JOB values (667,"CLERK");
insert into JOB values (668,"STAFF");
insert into JOB values (669,"ANALYST");
insert into JOB values (670,"SALESPERSON");
insert into JOB values (671,"MANAGER");
insert into JOB values (672,"PRESIDENT");
select * from JOB;
select DEPARTMENT.Location_ID,JOB._Function;

create table EMPLOYEE(
	EMPLOYEE_ID int primary key,
    LAST_NAME varchar(255),
    FIRST_NAME varchar(255),
    MIDDLE_NAME varchar(255),
    JOB_ID int,
    foreign key(JOB_ID) references JOB(JOB_ID),
    MANAGER_ID int,
    HIREDATE date,
    SALARY int,
    COMM int,
    Department_ID int,
    foreign key(Department_ID) references DEPARTMENT(Department_ID)
	);
select * from EMPLOYEE;
insert into EMPLOYEE values (7369,"SMITH","JOHN","Q",667,7902,DATE '1984-12-17',800,NULL,20);
insert into EMPLOYEE values (7499,"ALLEN","KEVIN","J",670,7698,DATE '1985-02-20',1600,300,30);
insert into EMPLOYEE values (7505,"DOYLE","JEAN","K",671,7839,DATE '1984-04-04',2850,NULL,30);
insert into EMPLOYEE values (7506,"DENNIS","LYNN","S",671,7839,DATE '1985-5-15',2750,NULL,30);
insert into EMPLOYEE values (7507,"BAKER","LESLIE","D",671,7839,DATE '1985-06-10',2200,NULL,40);
insert into EMPLOYEE values (7521,"WARK","CYNTHIA","D",670,7698,DATE '1985-2-22',1250,500,30);



-- 1
select * from EMPLOYEE;
select * from DEPARTMENT;
select * from JOB;
select * from location;
select FIRST_NAME,LAST_NAME,SALARY,COMM from EMPLOYEE;

alter table EMPLOYEE rename column Department_ID to d_id;

select EMPLOYEE_ID,LAST_NAME,Department_ID from EMPLOYEE;
select LAST_NAME,MIDDLE_NAME,FIRST_NAME,SALARY*12 from EMPLOYEE;
