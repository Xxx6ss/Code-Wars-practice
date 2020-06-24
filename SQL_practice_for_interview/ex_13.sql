Select avg(speed) from pc left join product on pc.model = product.model
where product.maker = 'A'
