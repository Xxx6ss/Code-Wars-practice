delete from pc
where ram = (select min(ram) from pc)
or hd = (select min(hd) from pc)




Удалить из таблицы PC компьютеры, имеющие минимальный объем диска или памяти.
