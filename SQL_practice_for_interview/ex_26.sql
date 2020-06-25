select avg(price) as price from(
select code, price, model, ram, hd from laptop
where model in (select model from product
where maker = 'A') 
union
select code, price, model, ram, hd from pc
where model in (select model from product
where maker = 'A' )) price





Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.
