create database LITA_DB


CREATE TABLE Employee (
staffid varchar (225) not null,
FirstName varchar (255) NOT NULL,
SecondName varchar (255),
Gender varchar (10),
Date_of_Birth date, 
HireDate datetime,
primary key (staffid)
)

select* from employee
insert into Employee (staffid, firstname, secondname, gender,Date_of_Birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')
)

-------to drop table --------

drop table employee

----delete sql command--

delete from employee
where staffid  = 'ab281'

-----truncate sql command

truncate table employee

---- insert more records into employee table----
select* from employee

insert into [dbo].[Employee]
values ( 'AB222', 'borah', 'just', 'female', '1988-10-09', '2020-02-09' ),
( 'AB210', 'aju', 'buka', 'male', '1987-2-6', '2020-7-9' ),
( 'AB100', 'joel', 'adiwu', 'male', '1988-4-3', '1990-3-2' )



----to create second table call salary table-----
create table salary (
salary_id int identity (1,2)not null,
staffid varchar (255) not null,
firstname varchar (255) not null,
lastname varchar (255) not null,
department nvarchar (max),
salary decimal (10,3)
)
 
 select * from salary

 -----insert records into salary table-------

 insert into [dbo].[salary] (staffid, firstname, lastname, department, salary)
 values ( 'AB401', 'ayan', 'olakun', 'HR', '555262.06789' ),
( 'AB212', 'okorie', 'mercy', 'ACCT','737368.05729'),
( 'AB223', 'joshua', 'chukwuemeka', 'M_AND_E','737474.6669' ),
( 'AB234', 'sanni', 'ibrahim', 'M_AND_E','344553.85369' ),
( 'AB254', 'mercy', 'olanipekun', 'HR','334193.345687' ),
( 'AB249', 'johnson', 'mercy', 'ACCT','899708.4555' ),
( 'AB298', 'ayomide', 'halleluyah', 'ACT', '342425.57856' ),
( 'AB260', 'deborah', 'justin', 'HR','887766.8123'),
( 'AB281', 'wale', 'olanipekun', 'ACCT','345909.8657' ),
( 'AB222', 'borah', 'just', 'M AND E', '556778.8769' ),
( 'AB210', 'aju', 'buka', 'ACCT', '356225.74589' ),
( 'AB100', 'joel', 'adiwu', 'M_AND_E', '345189.77824' )


------sum,count, max, min, average



-----update----
update salary
set salary =7886568.8986
where staffid= 'AB234'

-------update name----------------
select * from employee

update employee
set secondname ='ugo'   
where staffid ='ab234' 

-----update  department------

select * from salary
update salary
set department = 'tech depart'
where staffid ='ab212'


---------create addictional column into employee table------

 Alter table employee
 add state_of_origin varchar (50)
 
select * from employee

update employee
set state_of_origin = 'Lagos'
where staffid = 'AB249'

update employee
set state_of_origin = 'kaduna'
where staffid = 'AB401'

update employee
set state_of_origin = 'oyo'
where staffid = 'AB298'


-----create another table called payment table------

create table payment (
paymentid int identity (1,3) primary key,
acCount_number bigint not null,
staffid varchar (25),
Bank varchar (20) default 'first_bank',
payment_method varchar (50) check (payment_method = 'cash' or payment_method = 'transfer')
) 

select * from payment

insert into [dbo].[payment] (Account_number, staffid, payment_method)
values (3848591087, 'AB277', 'Cash'),
(1666117182, 'AB537', 'transfer'),
(6002828384, 'AB222', 'cash'),
(0019102928, 'AB393', 'transfer'),
(0193847585, 'AB112', 'transfer'),
(9919828838, 'AB223', 'cash'),
(0019277474, 'AB338', 'cash'),
(0383747447, 'AB374', 'transfer'),
(0003834778, 'AB246', 'transfer'),
(1938370003, 'AB447', 'cash'),
(9918182772, 'AB100', 'cash')

-----update payment------------

update payment
set staffid = 'AB109'
where staffid = 'AB100'

alter table payment 
alter column paymentid int identity (1,1)


insert into payment 

values (0073834778, 'AB146', 'Gtbank', 'transfer'),
(1978370003, 'AB047', 'zenithbank', 'cash'),
(9916182772, 'AB690', 'accessbank', 'cash')

--------CASH SALARY EARNER------- ANALYSIS ON PAYMENT TABLE

select * from payment
where payment_method = 'cash'

Select * from payment
where payment_method = 'transfer'

select count (*) as firstbank from payment
 where bank = 'firstbank'

 -------analysis on payment----------
 select count (*) as zenithbank from payment
 where bank = 'zenithbank'

 select count (*) as accessbank from payment
 where bank = 'accessbank'

		-------ANALYSIS ON EMPLOYEE TABLE--------

select * from employee
 
 select count (*) as female from employee
 Where gender = 'female'

 select count (*) as male from employee
     where gender = 'male'

select * from salary
 
 select max (salary) as 'highest paid' from salary
 select min (salary) as 'lowest paid' from salary
 select sum (salary) as 'total salary' from salary
 
 select top 5 salary, staffid, firstname from salary

 select salary, staffid, firstname from salary
              where salary > 500000

select salary, staffid, firstname from salary
where salary < 500000 

select salary, staffid from salary
where salary < 500000 


----------------SQL CLAUSES------------ 22/9/2024--------------
  
