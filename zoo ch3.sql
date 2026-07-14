select yr, subject, winner from nobel
where yr = 1950;

select winner from nobel
where yr = 1962 and subject = 'literature';

select yr, subject from nobel
where winner = 'albert einstein';

select winner from nobel
where subject = 'peace' and yr >= 2000;

select yr, subject, winner from nobel
where subject = 'literature' and yr between 1980 and 1989;

select * from nobel
where winner in ('theodore roosevelt', 'woodrow wilson', 'jimmy carter', 'barack obama');

select winner from nobel
where winner like 'john%';

select yr, subject, winner from nobel
where (yr = 1980 and subject = 'physics')
or (yr = 1984 and subject = 'chemistry');

select * from nobel
where yr = 1980 and subject not in ('chemistry', 'medicine');

select * from nobel
where (subject = 'medicine' and yr < 1910)
or (subject = 'literature' and yr >= 2004);

select * from nobel
where winner = 'peter grünberg';

select * from nobel
where winner = 'eugene o''neill';

select winner, yr, subject from nobel
where winner like 'sir%'
order by yr desc, winner;

select winner, subject from nobel
where yr = 1984 order by subject in ('physics', 'chemistry'), subject, winner;