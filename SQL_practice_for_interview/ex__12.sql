update laptop
set screen = screen + 1, 
price = price - 100
where model in (select model from product
where maker = 'E' or maker = 'B')




Добавьте один дюйм к размеру экрана каждого блокнота,
выпущенного производителями E и B, и уменьшите его цену на $100.
