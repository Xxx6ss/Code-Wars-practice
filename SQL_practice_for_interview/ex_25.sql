select distinct maker from product
where model in
(select model from pc
where ram = (select min(ram) from pc)
and speed = (select max(speed) from pc
where ram = (select min(ram) from pc))
)
and maker in (select maker from product 
where type = 'printer')





Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker
