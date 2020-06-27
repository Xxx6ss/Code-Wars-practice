insert into Outcomes (ship, battle, result) 
values ('Rodney', (select name from Battles
where date = '1944-10-25 00:00:00.000'), 'sunk'),
('Nelson', (select name from Battles
where date = '1945-01-28 00:00:00.000'), 'damaged')




Ввести в базу данных информацию о том, что корабль Rodney был потоплен в битве, произошедшей 25/10/1944, а корабль Nelson поврежден - 28/01/1945.
Замечание: считать, что дата битвы уникальна в таблице Battles.
