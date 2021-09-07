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
	select * from payroll