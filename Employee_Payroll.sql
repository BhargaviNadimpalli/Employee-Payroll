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
	
	