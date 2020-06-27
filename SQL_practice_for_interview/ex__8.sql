delete from Ships
where name in (select ship from Outcomes
where result = 'sunk')





Удалите из таблицы Ships все корабли, потопленные в сражениях
