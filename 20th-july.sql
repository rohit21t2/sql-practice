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



-- new syntax

select e.employeeid, e.employeename, e.departmentid,
d.departmentid, d.departmentname from employees as e
join departments as d
on e.departmentid=d.departmentid;

-- left new syntax
select e.employeeid, e.employeename, e.departmentid,
d.departmentid, d.departmentname
from departments as d left join employees as e
on e.departmentid=d.departmentid;




show databases;

use world;

-- primary key is a key which can be use to identify every row in a table;

-- forgein key is use to make relathionship and conections between two or more tables


select * from city;
select * from country;

select c.id, c.name, c.countrycode, cty.code , cty.name from city as c
join country as cty
on c.countrycode=cty.code;

select cty.code, cty.name from country as cty;

select c.id, c.name, c.countrycode, cty.code, cty.name from city as c
join country as cty;













