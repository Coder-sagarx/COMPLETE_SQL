show databases;
create database employes;
use employes;

create table worker(
id INT PRIMARY key,
name varchar(225),
company varchar(255)
);
insert into worker 
values (1,'aabb','admin'),(2,'aacc','hr'),(3,'aadd','admin'),(4,'aaee','acc'),(5,'aaff','acc'),(6,'aagg','hr');
insert into worker values(7,'azz','acc');
select * from worker;

-- distinct value

select distinct company from worker;
select company, count(company) from worker group by company;

select company, avg(id) from worker group by company;

select company, min(id) from worker group by company;
select company,sum(id) from worker group by company;

-- having keyword

select id,count(id) from worker group by id having count(id)>1;




