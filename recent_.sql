create database sailor_;
use sailor_;


create table sailors(
	sid int primary key,
    sname varchar(255),
    rating int,
    age float
);
select * from sailors;
insert into sailors values(22,'Dustin',7,71.5);
insert into sailors values(29,'Brutus',1,33.0);
insert into sailors values(31,'Lubber',8,55.5);
insert into sailors values(32,'Andy',8,25.5);
insert into sailors values(58,'Rusty',10,35);
insert into sailors values(64,'Horatio',7,35);
insert into sailors values(71,'Zorba',10,16);
insert into sailors values(74,'Horatio',9,35);
insert into sailors values(85,'Art',3,25.5);
insert into sailors values(95,'Bob',3,63.5);

create table boats(
	bid int primary key,
    bname varchar(255),
    color varchar(255)
);
insert into boats values(101,'Interlake','blue');
insert into boats values(102,'Interlake','red');
insert into boats values(103,'Clipper','green');
insert into boats values(104,'Marine','red');
select * from boats;

create table reserves(
	sid int,
    foreign key(sid) references sailors(sid),
    bid int, 
    foreign key(bid) references boats(bid),
    day_ date
);

-- drop table reserves;
insert into reserves values(22,101,date '1998-10-10');
insert into reserves values(22,102,date '1998-10-10');
insert into reserves values(22,103,date '1998-8-10');
insert into reserves values(22,104,date '1998-7-10');
insert into reserves values(31,102,date '1998-10-11');
insert into reserves values(31,103,date '1998-6-11');
insert into reserves values(31,104,date '1998-12-11');
insert into reserves values(64,101,date '1998-5-9');
insert into reserves values(64,102,date '1998-8-9');
insert into reserves values(74,103,date '1998-8-9');

select * from reserves;

-- 1;
select sname,age from sailors;

-- 2
select * from sailors where(rating>7);

select * from reserves;

-- 3
-- select sname from sailors inner join reserves where  reserves.bid=103;
