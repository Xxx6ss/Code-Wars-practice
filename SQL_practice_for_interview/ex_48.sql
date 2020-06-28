select distinct c.class from classes c
left join ships s on s.class = c.class
where c.class in (select ship from outcomes
where result = 'sunk') or s.name in (select ship from outcomes
where result = 'sunk')
group by c.class





Найдите классы кораблей, в которых хотя бы один корабль был потоплен в сражении.
