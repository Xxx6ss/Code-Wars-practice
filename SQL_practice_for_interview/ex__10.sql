insert into pc (code, model, speed, ram, hd, cd, price )
select
(select max(code) from pc)+ model as code,
model,
(select max(speed) from pc) as speed,
(select max(ram) from pc) as ram,
(select max(hd) from pc) as hd,
CAST((SELECT MAX(CAST (SUBSTRING(cd,1,LEN(cd) - 1) AS int)) FROM PC) AS VARCHAR) + 'x' AS cd,
(SELECT AVG(price) FROM PC) AS price
from product
where type = 'pc'
and model not in (select model from pc)





Добавить в таблицу PC те модели ПК из Product, которые отсутствуют в таблице PC.

При этом модели должны иметь следующие характеристики:

1. Код равен номеру модели плюс максимальный код, который был до вставки.

2. Скорость, объем памяти и диска, а также скорость CD должны иметь максимальные характеристики среди всех имеющихся в таблице PC.

3. Цена должна быть средней среди всех ПК, имевшихся в таблице PC до вставки.
