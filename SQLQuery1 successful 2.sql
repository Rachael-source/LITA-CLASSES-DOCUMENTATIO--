select * from employee

select count(staffid), state_of_origin from employee
group by state_of_origin

select count(staffid) as 'NO_of_state', state_of_origin as 'state' from employee
group by state_of_origin

select count(staffid) as 'No_of_staff', department from salary
group by department
order by department


select count (staffid) as staff, salary from salary
group by salary
having salary >= 500000

select count (staffid) as staff, salary from salary
group by salary
having salary <= 500000


------order by-----

select count(staffid) as 'NO_of_state', state_of_origin as 'state' from employee
group by state_of_origin

order by count (staffid) desc

select count(staffid) as 'NO_of_state', state_of_origin as 'state' from employee
group by state_of_origin
order by count (staffid) asc

------------sort by column index----

select count(staffid) as 'NO_of_state', state_of_origin as 'state' from employee
group by state_of_origin
order by 2 asc

-------comparision/relational operator-----

<=less than
>=greater than
<>= not equal

select * from salary
where salary =555262.068

select * from salary
where salary<>555262.068


select * from salary
where salary<>555262.068

select * from salary
where salary>555262.068

select * from salary
where salary<555262.068

------------range operators------------
----Between
---not Between

select * from salary
where salary between 500000 and 600000

select * from salary
where salary Not between 500000 and 600000

--------list operator---
--IN
--NOT IN

SELECT * from employee
where firstname in ('joel', 'bora', 'mercy')


select * from employee
where staffid in ('AB222', 'AB281', 'AB298')

select * from salary
where department in ('ACCT', 'M AND E')

Select * from salary
where department not in ( 'acct', 'HR', 'act')


----------- logical operators-
--and 
--or

select * from employee 
where firstname = 'sanni'

select * from employee
where firstname = 'mercy' and gender = 'female'

 

select * from employee
where gender ='female' or firstname ='joshua'

select * from employee 
where gender = 'female'and date_of_birth <='1988-10-09' and state_of_origin = 'benue'

------update---
select * from salary

update salary
set salary =987888.800
where Salary = '555262.068'

update Salary
set firstname = 'success'
where staffid = 'AB210'

-------------JOIN-----------
---inner join
---left join
---right join
----full join

select * from salary
select * from employee
select * from payment

----- join 2 tables-----
----employee = 7 column-(staffid, firstname, secondname, gender, date_of-birth, hiredate, state_of_origin)

--salary = 6 tables ( salaryid, staffid, firstname, lastname, department, salary)

select employee.staffid, employee.firstname, employee.secondname, employee.gender, employee.hiredate, employee.state_of_origin, 
salary.salary, salary.department
from employee
join salary
on salary.staffid =employee.staffid


select employee.staffid, employee.firstname, employee.secondname, employee.gender, employee.hiredate, employee.state_of_origin, 
salary.salary, salary.department
from employee
left join salary
on salary.staffid =employee.staffid

select employee.staffid, employee.firstname, employee.secondname, employee.gender, employee.hiredate, employee.state_of_origin, 
payment.account_number, payment.bank, payment.payment_method

from employee
left join payment
on payment.staffid=employee.staffid 

select employee.staffid, employee.firstname, employee.secondname, employee.gender, employee.hiredate, employee.state_of_origin, 
payment.account_number, payment.bank, payment.payment_method, salary.salary, salary.department

from employee
full join payment
on payment.staffid=employee.staffid 
full join salary
on salary.staffid =employee.staffid


----------------------union vs union all--------
create table LITA_STORE_LEKKI( 
customerid int identity (1,5),
firstname varchar (255),
lastname varchar (255),
gender nvarchar(max),
age int,
product_purchased varchar(20),
customer_address varchar (255),
amount decimal (10,2)
)

insert into [dbo].[LITA_STORE_LEKKI](firstname, lastname, gender, age, product_purchased,customer_address, amount)
values ('Aluva', 'Wale', 'Male', '18', 'book','12 lavar road', '12939.70789'),
('Julius', 'Nbowo', 'Male', '38', 'Laptop', 'No_4 hyba str', '86849.50'),
('Ghaba', 'Hama', 'male', '56', 'Fan and Television', 'jungle str', '200000.6087'),
('Agnes', 'Justus', 'Female', '40', 'chair', 'Tanta road', '60800.00465'),
('Rachael', 'Gbenga', 'Female', '35', 'Blenda', 'Jos North', '50000.7987'),
('Akaraba', 'Fantasa', 'Male', '45', 'Bag', 'No_5_apeal_way', '35900.00929'),
('Dudu', 'Haba', 'Male', '56', 'Machine', 'Junkle_road', '98400.7945608'),
('Blessed', 'Uba', 'Female', '44', 'Fabrics', 'Ugadawa Road', '80700.50'),
('Trasha', 'Nmva', 'Female', '67', 'Flasks and Jewels', 'Ramba Str.','60988.00865'),
('Sunkana', 'Jumbe', 'Male', '56', 'Keke', 'Tantawa Road', '250889.9065')

select * from [dbo].[LITA_STORE_LEKKI]

----insert more records into LITA_STORE_LEKKI---------

insert into LITA_STORE_LEKKI
Values ('Sarah', 'Umeh', 'Female', '36', 'dish', 'Jungle road', '4895.346780'),
('Habour', 'Tedi', 'Male', '40', 'Utensils', 'Kabone', '890.0000000'),
('Raphael', 'Ketti', 'Male', '18', 'Travelling bag', 'Atatta', '30000.00099'),
('Margreat', 'Wayoba', 'Female', '22', 'Phone', 'Utan barracks', '104000.0099')

select * from LITA_store_lekki

select 'LITA_store_lekki' as [Branches], customerid as [Customerid], firstname as [Firstname], lastname as [Lastname], gender as [Gender],
age as [Age], product_purchased as [Product Purchased], customer_address as [Customer Address],amount as [Amount]

from LITA_store_Lekki


---------------Create Table LITA_Store Marina--------------
Create Table LITA_Store_marina(
Customerid int not null,
Firstname varchar (20),
lastname varchar (20),
customer_Gender nvarchar( max),
age int,
product_purchased nvarchar (255),
address nvarchar (max),
amount decimal (20,3)
)

Insert into LITA_store_Marina (Customerid, Firstname, Lastname, Customer_gender, Age, Product_Purchased, Address, Amount)
values ('111','Grace', 'Jonathan', 'Female', '25', 'Text Book', 'Kampala Str.', '2373838.7458690000000'),
('112', 'Gabriel', 'John', 'Male', '45', 'Television', 'Jadin market', '4596754049.5965000000000'),
('114', 'Habaku', 'Umeh', 'Male', '87','chairs',  'Utan junction', '234569345.2345678000000'),
('188', 'Kalara', 'Yawa', 'Male', '39', 'sewing Machine', 'Satellite', '9456456.00000000000000'),
('200', 'Wale', 'Godwin', 'Male', '67','Boxes', 'Taminus', '3456567.23456000000000'),
('205', 'Idowu', 'Jonah', 'Male', '40','Rug', 'Rock Heaven', '3456789.2345697934500'),
('249', 'Blessing', 'John', 'Female', '55', 'Refrigerator', 'Mararaba', '34567567.0000000000000'),
('600', 'Agnes', 'Jonah', 'Female', '49', 'Sylinder', 'Gbenga Road', '23456745.3489505203000'),
('300', 'Unala', 'yanda', 'Male', '47',  'Fan', 'Rampa stadium', '34567867.2345600000078'),
('108', 'Mary', 'Manda', 'Female',  '29', 'Matrax', 'Bandawe Str.', '23456789.234567000000')

select * from LITA_STORE_MARINA

---------insert More records-------------
insert into LITA_Store_Marina
Values ('110', 'Hande', 'Joshua', 'Female', '43', 'Tanat road', '23456456.345670000000'),
('334', 'Gbenga', 'Daniel', 'Male', '63', 'Fanrara Road', '123454.03456780000000')


create table LITA_STORE_LEKKI_2(
customerid int,
firstname varchar (255),
lastname varchar (255),
gender nvarchar(max),
age int,
product_purchased varchar(20),
customer_address varchar (255),
amount decimal (20,5)
)

insert into LITA_STORE_LEKKI_2 (Customerid,Firstname, Lastname, Gender, Age, Product_purchased,Customer_Address, Amount)
values ('111', 'Aluva', 'Wale', 'Male', '18', 'book','12 lavar road', '12939.70789'),
('121', 'Julius', 'Nbowo', 'Male', '38', 'Laptop', 'No_4 hyba str', '86849.50'),
('153', 'Ghaba', 'Hama', 'male', '56', 'Fan and Television', 'jungle str', '200000.6087'),
('113', 'Agnes', 'Justus', 'Female', '40', 'chair', 'Tanta road', '60800.00465'),
('600', 'Rachael', 'Gbenga', 'Female', '35', 'Blenda', 'Jos North', '50000.7987'),
('120', 'Akaraba', 'Fantasa', 'Male', '45', 'Bag', 'No_5_apeal_way', '35900.00929'),
('400', 'Dudu', 'Haba', 'Male', '56', 'Machine', 'Junkle_road', '98400.7945608'),
('123', 'Blessed', 'Uba', 'Female', '44', 'Fabrics', 'Ugadawa Road', '80700.50'),
('576', 'Trasha', 'Nmva', 'Female', '67', 'Flasks and Jewels', 'Ramba Str.','60988.00865'),
('456', 'Sunkana', 'Jumbe', 'Male', '56', 'Keke', 'Tantawa Road', '250889.9065')

select * from [dbo].[LITA_STORE_LEKKI_2]

---------------------UNION--------------

select *from LITA_Store_Lekki_2
union
select * from LITA_Store_Marina

---------------------UNION ALL----------------

select *from LITA_Store_Lekki_2
union all
select * from LITA_Store_Marina

select 'LITA_store_lekki_2' as [Branches], customerid as [Customerid], firstname as [Firstname], lastname as [Lastname], gender as [Gender],
age as [Age], product_purchased as [Product Purchased], customer_address as [Customer Address],amount as [Amount]

from LITA_store_Lekki_2
union all

select 'LITA_store_marina_2' as [Branches], customerid as [Customerid], firstname as [Firstname], lastname as [Lastname], customer_gender as [Gender],
age as [Age], product_purchased as [Product Purchased], address as [Customer Address],amount as [Amount]

from LITA_store_marina

select * from employee


--------------SQL VIEW-------


Create view VieW_employee_table
as
Select Staffid, FirstName, SecondName,Gender, Date_of_Birth, HireDate, State_of_Origin
from employee

Select * from view_employee_table


create View View_LITA_Store_Lekki
as
select Customerid, FirstName,Gender,Age, product_purchased, Amount
from LITA_Store_Lekki

select * from view_LITA_Store_Lekki

Create View View_LITA_Store_Transation_Table

as
select 'LITA_store_lekki_2' as [Branches], customerid as [Customerid], firstname as [Firstname], lastname as [Lastname], gender as [Gender],
age as [Age], product_purchased as [Product Purchased], customer_address as [Customer Address],amount as [Amount]

from LITA_store_Lekki_2
union all

select 'LITA_store_marina_2' as [Branches], customerid as [Customerid], firstname as [Firstname], lastname as [Lastname], customer_gender as [Gender],
age as [Age], product_purchased as [Product Purchased], address as [Customer Address],amount as [Amount]

from LITA_store_marina



create view View_Employee_Total_Info
as

select employee.staffid, employee.firstname, employee.secondname, employee.gender, employee.hiredate, employee.state_of_origin, 
payment.account_number, payment.bank, payment.payment_method, salary.salary, salary.department

from employee
full join payment
on payment.staffid=employee.staffid 
full join salary
on salary.staffid =employee.staffid

Select * From View_Employee_Total_Info


----------------------------CASE WHEN------------------

Alter Table Employee
Add Age As Datediff(Year, Date_Of_Birth, Hiredate)

Select * From employee

Update employee
set hiredate ='2020-05-01'
where staffid ='AB100'

----Age= 60 and Above = Senior Executive
----Age >=40 but <60 =senior Manager
----Age <40 but >=30 = Manager
----Age <30 = Assistant Manager

select Staffid, FirstName, Gender, State_of_Origin,Age,
case
when age >= 60 then 'Senior Executive'
when age between 40 and  49 then 'Senior Manager'
when age between 30 and 39 then ' Manager'
when age <=29 then 'Assistant Manager'
else 'Unknown'
end as Agedifference
from employee


Select * from employee 

--------------- ALTER TABEL TO DROP STATE OF ORIGIN---------
ALTER TABLE EMPLOYEE
Drop column State_of_Origin

Alter Table Employee
Add State_of_Origin Nvarchar (255)

Update Employee
set State_of_Origin =
Case
When Staffid = 'AB100' then 'Benue'
When Staffid = 'AB210' then 'Bauchi'
When Staffid = 'AB212' then 'Ekiti'
When Staffid = 'AB222' then 'Benue'
When Staffid = 'AB223' then 'Plateau'
When Staffid = 'AB234' then 'Lagos'
When Staffid = 'AB249' then 'Delta'
When Staffid = 'AB254' then 'Taraba'
When Staffid = 'AB260' then 'Lagos'
When Staffid = 'AB281' then 'Ekiti'
When Staffid = 'AB298' then 'Enugu'
When Staffid = 'AB401' then 'Plateau'
 Else 'Unknown'
 End

 ------------ANALYSIS ON THE INTERNATIONAL BREWERIES PROFIT
 
 Select * From [dbo].[International Breweries]

 -------TOTAL PROFIT=-------------

 select sum (PROFIT) as Total_profit from [international Breweries]
 ------TOTAL PROFIT FOR SENEGAL------
 Select sum (profit) as Totalprofit from [International Breweries] 
 ------TOTAL PROFIT FOR NIGERIA IN 2019-------------
 Select sum (profit) as TotalProfit from [International Breweries]
 where countries = 'Nigeria' and Years = '2019'
 Select Brands, sum (profit) as TotalProfit from [International Breweries]
 where countries = 'Nigeria'
 group by Brands 
 order by 2 desc

 Select
    Case
	    when countries in ('Nigeria',' Ghana') then 'Anglophone'
		else 'Francophone'
		End as CountriesGroup,
		Sum (profit) as TotalProfit From [International Breweries]
		Where years in ('2017', '2018', '2019')
		Group By Countries
		Order by 2 desc
