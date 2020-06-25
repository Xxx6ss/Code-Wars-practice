select distinct p.maker from product p 
inner join pc on p.model=pc.model 
where p.type='PC' and pc.speed>=750 
intersect
select distinct p. maker from product p 
inner join laptop on p.model=laptop.model 
where p.type='laptop' and laptop.speed>=750
