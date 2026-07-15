use world;

select distinct(continent) from country;

select continent from country group by continent;

select continent , count(name) from country group by continent;

select count(name) from country where continent='North America';

select continent, count(name) from country group by continent;

select count(name), count(distinct(name)) from country;

select count(name), count(distinct(name)) from country group by continent;

select name, count(name) from country group by name;

select count(name) from city where district='zuid-Holland';

select district, count(name), sum(population) from city group by district;

select * from city;

select countrycode, count(name) from city group by countrycode;

-- count not count the null values


-- count the number of cities which has a live acceptency of 73.1 to 83 alter
-- get the total population of the countries to got their independance after 1990
-- count the no of countries which are not saved by any community
-- get the total countruies and the surface area for each region
-- get the total countries for each continent
-- get the total country for each region for each continent

select * from country;

select count(name) from country where lifeExpectancy between 73.1 and 83;

select sum(population) from country where indepyear>1990;

select count(name) from country where indepyear is null;

select region, count(name), sum(surfacearea) from country group by region;

select continent, count(name) from country group by continent;

select continent, region, count(name)  from country group by continent, region;