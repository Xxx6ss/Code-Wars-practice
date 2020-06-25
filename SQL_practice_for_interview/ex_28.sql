Select count(maker) maker from (
Select maker from Product group by maker having count(model)=1
)t1




Используя таблицу Product, определить количество производителей, выпускающих по одной модели.
