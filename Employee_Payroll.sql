--Welcome to Employee payroll service


--UC1 Ability to Create Database
create Database Employee_Payroll
select * from sys.databases
use Employee_Payroll

--UC2 Create Table employee_payroll in Payroll Service
Create table payroll	(
	Id int identity(1, 1) primary Key,
	Name varchar(50),
	Salary money Not Null,
	Start datetime Not Null
	)
	
	--UC3 Inserted data
	use Employee_Payroll
	insert into payroll(Name, Salary, Start) VALUES
	('Billi',100000.0,'2018-01-03'),
	('Terisa',200000.0,'2019-11-13'),
	('Charlie',300000.0,'2021-05-21')
	--UC4 Retrieving Data

    use Employee_Payroll
    select * from payroll
	--UC5 Retrieving data from particular employee
	select Name, Salary from payroll WHERE Name='Bill'

select * from payroll 
	WHERE start BETWEEN CAST('2021-01-01' AS DATE) AND GETDATE() 

select * from payroll 
	WHERE start BETWEEN CAST('2021-01-01' AS DATE) AND CAST('2021-09-01' AS DATE) 
	
	--UC6
ALTER TABLE payroll ADD gender VARCHAR(1)
 
update payroll set gender = 'F' WHere Name = 'Terisha'
update payroll set gender = 'M' WHere Name = 'Charlie' or Name = 'Bill' 
update payroll set Salary = 300000 WHere Name = 'Terisha'
use Employee_Payroll
 select * from payroll 

 select sum(salary) from payroll where gender='M' group by Gender;
select sum(salary) from payroll  group by Gender;
select sum(salary) as 'totalSalary',gender from payroll group by Gender;
select avg(salary) as 'averageSalary',gender from payroll group by Gender;
select min(salary) as 'minimumSalary',gender from payroll group by Gender;
select max(salary) as 'maximumSalary',gender from payroll group by Gender;
select count(Gender) as 'male' from payroll where gender='M' 
select count(Gender) as 'female' from payroll where gender='F
