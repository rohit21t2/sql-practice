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