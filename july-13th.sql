use world;
select distinct(continent) from country;
select count(continent), count(distinct(continent)) from country;
select count(name), count(distinct(name)) from country;

-- agrigate functions are the functions which are use to apply the calculations on set of rows(multiple rows) eg: count

select count(population), sum(population), avg(population) from country;
select count(surfacearea), sum(surfacearea), avg(surfacearea) from country;
select count(continent), max(continent), min(continent) from country;

-- population - aggregated colomn
-- count(population) - aggregated function
select population, count(population) from country;

select avg(population) from country;
select population, replace(population , 1,4) from country;
select avg( replace(population , 1,4)) from country;

-- data sorting (order by clouse)

select name,continent,region,population from country 
order by name desc;
select name,continent,region,population from country 
order by population,name;
select name,continent,region,population from country 
order by continent;
select name,continent,region,population from country 
order by continent,name;

-- region assending order sort

select name,continent,region,population from country 
order by region, population desc;