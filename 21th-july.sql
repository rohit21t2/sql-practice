create database joinsdb;
use joinsdb;
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
DepartmentID INT
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 105), -- No matching department
(4, 'David', NULL), -- No department assigned
(5, 'Eva', 101);



use world;

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
join country as cty
on c.countrycode=cty.code;

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c 
natural join country as cty;






create database selfjoin;

use selfjoin;

create table employees(eid int, name varchar(20), manager_id int);

insert into employees values(1,'Tushar',null),(2,'abhinav',1),(3,'saksham',1),(4,'akshay',2);

select * from employees;

select emp.eid, emp.name, emp.manager_id from employees as emp;

select mngr.eid, mngr.name from employees as mngr;

select emp.eid, emp.manager_id, mngr.eid, mngr.name from employees as emp
join employees as mngr
where emp.manager_id=mngr.eid;

select emp.eid, emp.name, emp.manager_id, mngr.eid, mngr.name from employees as emp
left join employees as mngr
on emp.manager_id = mngr.eid;

