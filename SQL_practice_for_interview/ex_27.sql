Select maker, avg(hd) as hd from
product as p join pc on p.model = pc.model 
where maker in (select maker from product
where type = 'printer')
group by maker




Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.
