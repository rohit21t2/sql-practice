create database sql_joins_21;

use sql_joins_21;

create table departments (
    dept_id int primary key,
    dept_name varchar(50),
    location varchar(50)
);

insert into departments values
(10,'hr','jaipur'),
(20,'it','bangalore'),
(30,'finance','mumbai'),
(40,'marketing','delhi'),
(50,'legal','pune');

create table employees (
    emp_id int primary key,
    emp_name varchar(50),
    dept_id int,
    salary int,
    city varchar(50)
);

insert into employees values
(101,'amit',10,45000,'jaipur'),
(102,'bhavna',20,72000,'bangalore'),
(103,'chirag',20,68000,'bangalore'),
(104,'divya',30,55000,'mumbai'),
(105,'esha',null,39000,'delhi'),
(106,'farhan',40,61000,'delhi'),
(107,'gaurav',60,50000,'kolkata'),
(108,'hina',30,83000,'mumbai');

create table projects (
    proj_id int primary key,
    proj_name varchar(50),
    dept_id int,
    budget int
);

insert into projects values
(1,'payroll revamp',10,120000),
(2,'cloud migration',20,500000),
(3,'mobile app',20,300000),
(4,'audit automation',30,250000),
(5,'brand refresh',40,180000),
(6,'data lake',70,400000);

select * from departments;

select * from employees;

select * from projects;


-- 1
select e.emp_id, e.emp_name, d.dept_name, d.location from employees e
join departments as d on e.dept_id = d.dept_id;

-- 2
select p.proj_id, p.proj_name, d.dept_name, p.budget from projects p
join departments as d on p.dept_id = d.dept_id;

-- 3
select e.emp_name, d.dept_name, p.proj_name from employees as e
join departments as d on e.dept_id = d.dept_id
join projects as p on d.dept_id = p.dept_id;

-- 4
select e.emp_id, e.emp_name, d.dept_name, d.location from employees e
left join departments as d on e.dept_id = d.dept_id;

-- 5
select d.dept_id, d.dept_name, p.proj_id, p.proj_name from departments as d 
join projects as p on p.dept_id=d.dept_id;

-- 6
select e.emp_id, e.emp_name, e.dept_id from employees as e
left join departments as d
on e.dept_id=d.dept_id where d.dept_name is null;

-- 7
select e.emp_name, d.dept_id, d.dept_name from employees as e
right join departments as d on e.dept_id = d.dept_id;

-- 8
select d.dept_name, p.proj_id, p.proj_name, p.dept_id from departments as d
right join projects as p on d.dept_id = p.dept_id;

-- 9
select d.dept_id, d.dept_name, d.location from departments as d
left join employees as e on d.dept_id = e.dept_id where e.emp_id is null;

-- 10
select e.emp_name, e.salary, d.dept_name from employees as e
cross join departments as d where ( d.dept_name = 'finance' or'legal') and e.salary > 70000;

-- 11
select p.proj_name, p.budget, d.dept_name, d.location from projects p 
cross join departments as d 
where budget>=400000 and location in ('mumbai', 'pune');

-- 12
select count(*) as total_combinations from employees as e
cross join departments as d;

-- 13
select emp_id, emp_name, dept_id, salary, city from employees
where salary > 60000;

-- 14
select emp_id, emp_name, salary, city from employees
where city in ('delhi','mumbai');

-- 15
select emp_id, emp_name, dept_id, salary from employees
where dept_id is null;

-- 16
select dept_id, dept_name, location from departments
where location in ('bangalore','delhi');

-- 17
select dept_id, dept_name, location from departments
where dept_id >= 30;

-- 18
select dept_id, dept_name, location from departments
where dept_name like 'f%' or dept_name like 'l%';

-- 19
select proj_id, proj_name, dept_id, budget from projects
where budget between 200000 and 400000;

-- 20
select proj_id, proj_name, dept_id, budget from projects
where dept_id = 20; 

-- 21
select proj_id, proj_name, budget from projects
where proj_name like '%a%' and budget < 300000;

-- 22
select e.emp_name, d.dept_name, d.location, p.proj_name, p.budget from employees as e 
join departments as d on e.dept_id = d.dept_id
join projects as p on d.dept_id = p.dept_id;

-- 23
select e.emp_id, e.emp_name, d.dept_name, p.proj_name from employees as e
left join departments as d on e.dept_id = d.dept_id
left join projects as p on d.dept_id = p.dept_id;


-- 24 
select e.emp_name, e.salary, d.dept_name, p.proj_name, p.budget from employees as e
join departments as d on e.dept_id = d.dept_id
join projects as p on d.dept_id = p.dept_id
where e.salary > 60000 and p.budget > 250000;

-- 25
select d.dept_id, d.dept_name, e.emp_name, p.proj_name from departments as d
left join employees as e on d.dept_id = e.dept_id
left join projects as p on d.dept_id = p.dept_id;

-- 26
select e.emp_name, d.location, p.proj_name from employees as e
join departments as d on e.dept_id = d.dept_id
join projects as p on d.dept_id = p.dept_id
where d.location in ('bangalore','mumbai');

-- 27
select e1.emp_name as employee_1, e2.emp_name as employee_2, e1.city from employees as e1
join employees as e2 on e1.city = e2.city
where e1.emp_id < e2.emp_id;

-- 28
select p.proj_name, p.dept_id, e.emp_name from projects as p
left join employees as e on p.dept_id = e.dept_id;
