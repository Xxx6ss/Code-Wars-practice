Select distinct maker, price from printer
left join product on product.model = printer.model
where price = (select min(price) from printer
where color = 'y') and color = 'y'

