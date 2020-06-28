Select name as ship from ships as s
left join classes c on c.class = s.class
where bore = 16
union 
select ship from outcomes as o
left join classes c on c.class = o.ship
where bore = 16




Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes).
