select c.class, count(s.ship) as ships from classes as c
left join (
select ship, class from outcomes as o
left join ships s on s.name = o.ship
where result = 'sunk'
) as s on s.class = c.class or s.ship = c.class
group by c.class



Для каждого класса определите число кораблей этого класса, потопленных в сражениях. Вывести: класс и число потопленных кораблей.
