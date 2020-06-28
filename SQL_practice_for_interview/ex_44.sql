Select distinct name from ships
where name like 'R%'
union
select ship as name from outcomes
where ship like 'R%'




Найдите названия всех кораблей в базе данных, начинающихся с буквы R.
