select product.model, price from product join pc on pc.model = product.model
where maker = 'B'
union (select product.model, price from product  join laptop on laptop.model = product.model
where maker = 'B')
union (select product.model, price from product join printer on printer.model = product.model
where maker = 'B')
