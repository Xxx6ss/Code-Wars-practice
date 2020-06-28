select maker, max(price) as price from (select pc.model, price, maker from pc
left join product on product.model = pc.model
union
select laptop.model, price, maker from laptop
left join product on product.model = laptop.model
union
select printer.model, price, maker from printer
left join product on product.model = printer.model) t
group by maker




Для каждого производителя, у которого присутствуют модели хотя бы в одной из таблиц PC, Laptop или Printer,
определить максимальную цену на его продукцию. 
Вывод: имя производителя, если среди цен на продукцию данного производителя присутствует NULL, то выводить для этого производителя NULL, 
иначе максимальную цену.
