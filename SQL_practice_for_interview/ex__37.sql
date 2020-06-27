select c.class from Classes c
left join (
select class, name from ships
union 
select ship, ship from Outcomes
) as s on s.class = c.class
group by c.class
having count (s.name) = 1





Найдите классы, в которые входит только один корабль из базы данных (учесть также корабли в Outcomes)
