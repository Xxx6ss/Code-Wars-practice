select name from Ships
where class = name
union
select ship as name from Outcomes o, Classes c 
where c.class = o.ship




Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).
