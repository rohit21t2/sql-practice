create database sql_practice;

use sql_practice;

create table employees (
    empid int primary key,
    name varchar(50) not null,
    dept varchar(20) not null,
    role varchar(20) not null,
    salary int not null,
    gender char(1) not null,
    joindate date not null,
    address varchar(100) not null,
    city varchar(50) not null,
    state char(2) not null,
    region varchar(10) not null
);

insert into employees
(empid, name, dept, role, salary, gender, joindate, address, city, state, region)
values
(1, 'Alice', 'HR', 'Manager', 55000, 'F', '2019-03-15', '101 Maple St', 'New York', 'NY', 'East'),
(2, 'Bob', 'IT', 'Developer', 72000, 'M', '2020-07-22', '22 Oak Ave', 'Chicago', 'IL', 'Midwest'),
(3, 'Carol', 'Finance', 'Analyst', 68000, 'F', '2018-11-01', '303 Pine Rd', 'New York', 'NY', 'East'),
(4, 'David', 'HR', 'Executive', 52000, 'M', '2021-01-10', '44 Birch Ln', 'Chicago', 'IL', 'Midwest'),
(5, 'Eve', 'IT', 'Senior Dev', 85000, 'F', '2017-06-30', '55 Cedar Blvd', 'Houston', 'TX', 'South'),
(6, 'Frank', 'Finance', 'Manager', 74000, 'M', '2019-09-14', '606 Elm St', 'New York', 'NY', 'East'),
(7, 'Grace', 'Marketing', 'Executive', 60000, 'F', '2022-02-28', '77 Spruce Dr', 'Chicago', 'IL', 'Midwest'),
(8, 'Hank', 'IT', 'Lead', 90000, 'M', '2016-04-05', '88 Walnut Way', 'Houston', 'TX', 'South'),
(9, 'Ivy', 'HR', 'Executive', 58000, 'F', '2020-12-19', '99 Ash Ct', 'New York', 'NY', 'East'),
(10, 'Jack', 'Finance', 'Analyst', 65000, 'M', '2021-03-07', '10 Willow Pl', 'Chicago', 'IL', 'Midwest'),
(11, 'Karen', 'Marketing', 'Manager', 62000, 'F', '2018-08-23', '11 Poplar St', 'Houston', 'TX', 'South'),
(12, 'Leo', 'IT', 'Developer', 78000, 'M', '2019-11-11', '12 Sycamore Ave', 'New York', 'NY', 'East'),
(13, 'Mia', 'HR', 'Executive', 53000, 'F', '2022-05-16', '13 Hickory Rd', 'Chicago', 'IL', 'Midwest'),
(14, 'Nate', 'Finance', 'Manager', 71000, 'M', '2017-12-02', '14 Chestnut Ln', 'Houston', 'TX', 'South'),
(15, 'Olivia', 'Marketing', 'Analyst', 66000, 'F', '2020-06-18', '15 Magnolia Dr', 'New York', 'NY', 'East'),
(16, 'Paul', 'IT', 'Senior Dev', 82000, 'M', '2018-03-27', '16 Dogwood Blvd', 'Chicago', 'IL', 'Midwest'),
(17, 'Quinn', 'HR', 'Executive', 57000, 'F', '2021-09-09', '17 Hawthorn St', 'Houston', 'TX', 'South'),
(18, 'Rita', 'Finance', 'Lead', 76000, 'F', '2019-01-25', '18 Redwood Ave', 'New York', 'NY', 'East'),
(19, 'Sam', 'Marketing', 'Executive', 63000, 'M', '2022-07-14', '19 Cypress Ct', 'Chicago', 'IL', 'Midwest'),
(20, 'Tina', 'IT', 'Lead', 88000, 'F', '2016-10-31', '20 Juniper Way', 'Houston', 'TX', 'South'),
(21, 'Uma', 'HR', 'Manager', 60000, 'F', '2020-04-03', '21 Aspen Pl', 'Dallas', 'TX', 'South'),
(22, 'Victor', 'Finance', 'Analyst', 69000, 'M', '2018-07-19', '22 Cottonwood St', 'Dallas', 'TX', 'South'),
(23, 'Wendy', 'Marketing', 'Manager', 64000, 'F', '2021-11-27', '23 Palmetto Ave', 'Phoenix', 'AZ', 'West'),
(24, 'Xander', 'IT', 'Architect', 95000, 'M', '2015-02-14', '24 Mesquite Rd', 'Phoenix', 'AZ', 'West'),
(25, 'Yara', 'HR', 'Executive', 54000, 'F', '2022-09-08', '25 Saguaro Ln', 'Phoenix', 'AZ', 'West'),
(26, 'Zoe', 'Finance', 'Manager', 73000, 'F', '2019-05-21', '26 Palo Verde Dr', 'Dallas', 'TX', 'South'),
(27, 'Aaron', 'Marketing', 'Analyst', 67000, 'M', '2020-10-15', '27 Ocotillo Blvd', 'Phoenix', 'AZ', 'West'),
(28, 'Bella', 'IT', 'Senior Dev', 80000, 'F', '2017-08-06', '28 Ironwood St', 'Chicago', 'IL', 'Midwest'),
(29, 'Carlos', 'HR', 'Executive', 56000, 'M', '2021-06-24', '29 Pecan Ave', 'Houston', 'TX', 'South'),
(30, 'Diana', 'Finance', 'Lead', 77000, 'F', '2018-02-09', '30 Peachtree Ct', 'New York', 'NY', 'East'),
(31, 'Ethan', 'IT', 'Developer', 74000, 'M', '2019-04-18', '31 Magnolia St', 'Dallas', 'TX', 'South'),
(32, 'Fiona', 'Marketing', 'Executive', 61000, 'F', '2022-01-05', '32 Bluebonnet Ave', 'Dallas', 'TX', 'South'),
(33, 'George', 'Finance', 'Analyst', 66000, 'M', '2020-08-11', '33 Sunflower Rd', 'Phoenix', 'AZ', 'West'),
(34, 'Helen', 'HR', 'Manager', 59000, 'F', '2017-03-22', '34 Cactus Ln', 'Phoenix', 'AZ', 'West'),
(35, 'Ivan', 'IT', 'Lead', 92000, 'M', '2015-09-30', '35 Desert Dr', 'Phoenix', 'AZ', 'West'),
(36, 'Julia', 'Marketing', 'Manager', 65000, 'F', '2019-12-03', '36 Mesa Blvd', 'Dallas', 'TX', 'South'),
(37, 'Kevin', 'Finance', 'Manager', 70000, 'M', '2021-07-20', '37 Prairie St', 'Chicago', 'IL', 'Midwest'),
(38, 'Laura', 'HR', 'Executive', 55000, 'F', '2022-10-14', '38 Lakeview Ave', 'Chicago', 'IL', 'Midwest'),
(39, 'Mark', 'IT', 'Developer', 76000, 'M', '2018-05-07', '39 Riverview Rd', 'New York', 'NY', 'East'),
(40, 'Nina', 'Marketing', 'Analyst', 63000, 'F', '2020-03-25', '40 Bayview Ln', 'New York', 'NY', 'East'),
(41, 'Oscar', 'Finance', 'Analyst', 67000, 'M', '2019-08-19', '41 Hillside Dr', 'Dallas', 'TX', 'South'),
(42, 'Priya', 'HR', 'Senior Dev', 79000, 'F', '2016-11-28', '42 Creekside Blvd', 'Houston', 'TX', 'South'),
(43, 'Raj', 'IT', 'Manager', 85000, 'M', '2018-06-14', '43 Brookside St', 'Phoenix', 'AZ', 'West'),
(44, 'Sarah', 'Marketing', 'Lead', 71000, 'F', '2017-02-01', '44 Springdale Ave', 'New York', 'NY', 'East'),
(45, 'Tom', 'Finance', 'Senior Dev', 81000, 'M', '2020-09-09', '45 Fairview Rd', 'Chicago', 'IL', 'Midwest'),
(46, 'Uma', 'IT', 'Architect', 97000, 'F', '2014-12-22', '46 Northgate Ln', 'New York', 'NY', 'East'),
(47, 'Vera', 'Marketing', 'Manager', 68000, 'F', '2021-04-30', '47 Eastwood Dr', 'Dallas', 'TX', 'South'),
(48, 'Will', 'HR', 'Analyst', 51000, 'M', '2022-11-15', '48 Westfield Blvd', 'Phoenix', 'AZ', 'West'),
(49, 'Xena', 'Finance', 'Lead', 78000, 'F', '2019-10-06', '49 Southpark St', 'Chicago', 'IL', 'Midwest'),
(50, 'Yusuf', 'IT', 'Senior Dev', 87000, 'M', '2016-07-17', '50 Central Ave', 'Houston', 'TX', 'South');

-- 1
select dept, count(*) as totalemployees from employees
group by dept;

-- 2
select dept, sum(salary) as totalsalary from employees
group by dept;

-- 3
select gender, avg(salary) as avgsalary from employees
group by gender;

-- 4
select dept, max(salary) as maxsalary from employees
group by dept;

-- 5
select role, min(salary) as minsalary from employees
group by role;

-- 6
select city, count(*) as empcount from employees
group by city;

-- 7
select region, sum(salary) as totalsalary from employees
group by region;

-- 8
select dept, avg(salary) as avgsalary from employees
group by dept order by avgsalary desc;

-- 9
select city, sum(salary) as totalsalary from employees
group by city order by totalsalary asc;

-- 10
select role, count(*) as empcount from employees
group by role order by empcount desc, role asc;

-- 11
select state, count(*) as empcount from employees
group by state order by empcount desc, state asc;

-- 12
select region, sum(salary) as totalsalary from employees
group by region order by totalsalary desc;

-- 13
select dept, min(salary) as minsalary from employees
group by dept order by minsalary desc;

-- 14
select dept, count(*) as empcount from employees
group by dept having count(*) > 10;

-- 15
select dept, avg(salary) as avgsalary from employees
group by dept having avg(salary) > 65000;

-- 16
select city, sum(salary) as totalsalary from employees
group by city having sum(salary) > 600000;

-- 17
select role, count(*) as empcount from employees
group by role having count(*) > 7;

-- 18
select region, avg(salary) as avgsalary from employees
group by region having avg(salary) < 70000;

-- 19
select dept, max(salary) as maxsalary from employees
group by dept having max(salary) >= 90000;

-- 20
select state, count(*) as empcount from employees
group by state having count(*) > 12;

-- 21
select city, min(salary) as minsalary from employees
group by city having min(salary) > 60000;

-- 22
select dept, city, count(*) as empcount from employees
group by dept, city;

-- 23
select dept, gender, avg(salary) as avgsalary from employees
group by dept, gender;

-- 24
select region, role, count(*) as empcount from employees
group by region, role;

-- 25
select state, dept, max(salary) as maxsalary from employees
group by state, dept;

-- 26
select city, gender, sum(salary) as totalsalary from employees
group by city, gender;

-- 27
select dept, city, count(*) as empcount from employees
group by dept, city having count(*) > 2;

-- 28
select region, gender, avg(salary) as avgsalary from employees
group by region, gender order by region asc, avgsalary desc;

-- 29
select state, role, count(*) as empcount from employees
group by state, role having count(*) > 1;

-- 30
select year(joindate) as joinyear, count(*) as joiners from employees
group by year(joindate) order by joinyear;

-- 31 
select year(joindate) as joinyear, avg(salary) as avgsalary
from employees
group by year(joindate)
order by joinyear;

-- 32
select month(joindate) as joinmonth, count(*) as joiners from employees
group by month(joindate) order by joinmonth;

-- 33
select quarter(joindate) as joinqtr, sum(salary) as totalsalary from employees
group by quarter(joindate) order by joinqtr;

-- 34
select quarter(joindate) as qtr, count(*) as joiners from employees
where quarter(joindate) in (1, 3) group by quarter(joindate) order by qtr;

-- 35
select year(joindate) as joinyear, dept, count(*) as empcount from employees 
group by year(joindate), dept  order by joinyear, dept;

-- 36
select year(joindate) as joinyear, count(*) as joiners from employees
group by year(joindate) having count(*) > 6 order by joinyear;

-- 37
select quarter(joindate) as qtr, avg(salary) as avgsalary from employees
group by quarter(joindate) having avg(salary) > 70000 order by qtr;

-- 38
select state, count(*) as empcount, avg(salary) as avgsalary from employees
group by state order by state;

-- 39
select region, city, sum(salary) as totalsalary from employees
group by region, city order by region, city;

-- 40
select region, count(*) as empcount from employees
group by region having count(*) > 10;

-- 41
select region, state, sum(salary) as totalsalary from employees
group by region, state;

-- 42
select region, count(*) as empcount, avg(salary) as avgsalary from employees
group by region having count(*) > 10 and avg(salary) > 67000;
   
-- 43
select city, count(distinct role) as uniqueroles from employees
group by city;

-- 44
select dept, count(*) as femalecount from employees
where gender = 'f' group by dept;

-- 45
select dept, avg(salary) as avgsalary from employees
where joindate > '2019-01-01' group by dept;

-- 46
select city, sum(salary) as totalsalary from employees
where dept = 'it' group by city;

-- 47
select role, count(*) as empcount from employees
where salary > 70000 group by role;

-- 48
select dept, max(salary) as maxsalary from employees
where region in ('south', 'west') group by dept;

-- 49
select year(joindate) as joinyear, count(*) as empcount from employees
where state = 'tx' group by year(joindate) order by joinyear;

-- 50 
select dept, count(*) as eligiblefemales from employees
where gender = 'f' and salary > 60000 group by dept having count(*) > 3;






