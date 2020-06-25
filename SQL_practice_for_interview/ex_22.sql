select speed, avg(price) as price from product, pc
where speed >600
group by speed
