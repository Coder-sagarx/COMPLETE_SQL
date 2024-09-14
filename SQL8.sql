-- set operation
show  databases;
create database y;
use y;

create table t1(
id integer primary key,
name varchar(255), 
rollnu int
);

insert into t1 
values(1,'sagar',56),
(6,'a',263629),
(2,'b',263629),
(3,'c',23232),
(4,'d',56),
(5,'f',676555);

select * from t1;

create table t2(
id integer primary key,
name varchar(255),
rollnu int

);

insert into t2
values(1,'sagar',56 ),
(2,'g',263629),
(6,'h', 5443 ),
(11,'i',76),
(9,'j' ,56),
(89,'k',98);

select * from t2;

-- union of table 1 and table 2
select * from t1 union select* from t2;

select*from t1 where rollnu=56 union select *from t2 where rollnu=56;
select*from t1  inner join  t2 using(id) ;
select*from t1  left join  t2 using(name) ;
select*from t1  right join  t2 using(rollnu) ;
-- intersection
-- select *from t1 intersect select * from t2; 