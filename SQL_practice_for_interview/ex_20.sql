Select maker, count(model) from product
where product.type = 'pc'
group by maker
having count(model) >= 3

