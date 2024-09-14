show  databases;
create database org;
use org;

create table worker(
worker_id integer not null primary key auto_increment,
fname varchar(255),
lname varchar(255),
salary int(15),
joining_date datetime,
department char(25)
);

insert into worker 
values(1,'sagar',' singh',50000,'2004-08-11','admin'),
(2,'bora',' bisht',47000,'2010-08-11','admin'),
(3,'chiku',' rathor',37000,'2009-08-11','acc'),
(4,'darshit',' kisan',20000,'2008-08-11','admin'),
(5,'fifa',' oli',95000,'2007-08-11','hr'),
(6,'ammu',' papola',87000,'2006-08-11','hr'),
(8,'anu',' joshi',100000,'2005-08-11','acc');
select * from worker;

create table bonus(
worker_ref_id integer ,
bonus_ammount int,
bonus_date datetime,
foreign key (worker_ref_id)
references worker (worker_id)
on delete cascade
);

insert into bonus
values(1,2629,'2005-08-11 '),
(2,3244,'2004-09-01 '),
(1,3242,'2003-08-31 '),
(2,2629,'2002-02-21 ');

select * from bonus;

create table title(
worker_ref_id integer,
worker_title char(25),
affected_from datetime,
foreign key (worker_ref_id)
references worker (worker_id)
on delete cascade
);

insert into title
values(3,'manager','2005-08-11 00:00:00 '),
(4,'executive','2004-09-01 00:00:00 '),
(5,'asst. manager','2003-08-31 00:00:00 '),
(6,'lead','2002-02-21 00:00:00 '),
(8,'lead','2001-03-17 00:00:00 '),
(1,'manager','2010-04-18 00:00:00 '),
(2,'executive','2012-07-19 00:00:00 ');

select * from title;

select fname as worker_name from worker;

select upper(fname) as worker_name from worker;

select distinct department from worker;

select substring(fname,1,3) from worker;

select instr(fname,'b') from worker;

select rtrim(fname) from worker;
select ltrim(lname) from worker;

select distinct department ,length(department) from worker;

select replace(fname,'a','A') from worker;

select concat(fname,' ',lname) from worker;

select *from worker order by fname;
select * from worker order by fname,department desc;

select *from worker where fname in ('sagar','chiku');
select *from worker where fname not in ('sagar','chiku');

select * from worker where department like 'admin%';
select *from worker where fname like '%a%';
select * from worker where fname like '%a';
select *from worker where fname like '___a'; -- four character are int fname ends with 'a' and we use three underscore '_'

select * from worker where salary between 45000 and 75000;

select * from worker where year(joining_date) =2010 and month(joining_date)=08 ;

select  department ,count(*) from worker where department = 'admin'; 

select concat(fname,' ',lname) from worker where salary between 50000 and 100000;

select distinct department,count(worker_id) as c from worker group by department order by c desc;

select * from worker as w inner join title as t on w.worker_id=t.worker_ref_id where worker_title='manager';

select   worker_title ,count(*) as c from  title  group by worker_title  having count(*)>1;

select * from worker as w where w.worker_id%2!=0;
select * from worker as w where w.worker_id%2=0;

create table clone_worker like worker;        -- create a copy of worker attribut in clone_worker
select *from clone_worker;   

insert into clone_worker select* from worker;        -- insert a copy of worker data in clone_worker

select worker.* from worker inner join  clone_worker using(worker_id);
	
select curtime();
select curdate();

select *from worker order by salary desc limit 5;
select *from worker order by salary desc limit 4,1;

select salary from worker w1
where 5=(
select count(distinct(w2.salary))
from worker w2
where w2.salary>=w1.salary
);

select * from worker as w1 , worker as w2  where w1.salary=w2.salary and w1.worker_id !=w2.worker_id;

select *from worker order by salary desc limit 1,1;
select max(salary) from worker
where  salary not in (select max(salary) from worker);

select worker_id from worker where worker_id not in (select worker_ref_id from bonus);





