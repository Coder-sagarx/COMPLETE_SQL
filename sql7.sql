-- joins
show  databases;
create database x;
use x;

create table p(
id integer primary key,
name varchar(255),
eid varchar(255),
dilivery_data date,
clientid int
);

insert into p 
values(1,'sagar','kausani@gmail.com','2004-08-11',263629),
(6,'a','kausani@gmail.com','2004-08-11',263629),
(2,'b','okok@gmail.com','2004-08-12',263629),
(3,'c','apple@gmail.com','2004-08-13',23232),
(4,'d','mango@gmail.com','2004-08-14',233216),
(5,'f','koo@gmail.com','2004-08-15',676555);

select * from p;

create table e(
id integer primary key,
fname varchar(255),
lname varchar(255),
age int,
emailid varchar(255),
phonenu int,
city varchar(255)

);

insert into e
values(1,'sagar','bisht',56,'almora@gmail.com',263629,'almora'),
(6,'a','false',56,'almora@gmail.com',5443,'xvcc'),
(2,'b','g',32,'almora@gmail.com',53543,'xvv'),
(3,'c','e',76,'almora@gmail.com',3543,'xvxx'),
(4,'d','t',8,'almora@gmail.com',535454,'dsv'),
(5,'f','j',98,'almora@gmail.com',45334,'vxvxxxx');

select * from e;


select e.id,e.fname,e.lname,p.id,p.name from e as e
inner join p as  p on e.id=p.empid;




