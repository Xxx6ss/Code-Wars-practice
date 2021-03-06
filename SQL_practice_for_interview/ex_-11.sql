insert into pc (code, model, speed, ram, hd, cd, price)
select min(code) + 20,
model + 1000,
max(speed),
max(ram) * 2,
max(hd) * 2,
CAST((SELECT MAX(CAST (SUBSTRING(cd,1,LEN(cd) - 1) AS int)) FROM PC) AS VARCHAR) + 'x' AS cd,
max(price) / 1.5
from laptop
group by model







Для каждой группы блокнотов с одинаковым номером модели добавить запись в таблицу PC со следующими характеристиками: 
код: минимальный код блокнота в группе +20; 
модель: номер модели блокнота +1000; 
скорость: максимальная скорость блокнота в группе; 
ram: максимальный объем ram блокнота в группе *2; 
hd: максимальный объем hd блокнота в группе *2; 
cd: cd c максимальной скоростью среди всех ПК; 
цена: максимальная цена блокнота в группе, уменьшенная в 1,5 раза
