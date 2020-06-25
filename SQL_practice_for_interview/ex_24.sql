select model from 
(select model, price from pc
union
select model, price from laptop
union
select model, price from printer
) t1 where price = (select max(price) from (
select price from pc
union
select price from laptop
union
select price from printer
) t2)





Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции
