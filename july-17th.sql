use world;

select * from country;

select continent, count(*) from country group by continent
having count(*)>30;

select indepyear from country where indepyear=1991;

select indepyear, count(name) from country group by indepyear;
