delete from laptop
where model  in (select model from product 
where maker not in (select maker from product 
where type = 'printer'))







Удалить все блокноты, выпускаемые производителями, которые не выпускают принтеры
