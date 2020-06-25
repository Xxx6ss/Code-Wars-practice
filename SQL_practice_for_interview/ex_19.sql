select maker, avg(screen) from laptop
left join product on product.model = laptop.model
group by maker

