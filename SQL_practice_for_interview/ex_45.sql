Select distinct name from ships
where name like '% % %'
union
select ship as name from outcomes
where ship like '% % %'



Найдите названия всех кораблей в базе данных, состоящие из трех и более слов (например, King George V).
Считать, что слова в названиях разделяются единичными пробелами, и нет концевых пробелов.
