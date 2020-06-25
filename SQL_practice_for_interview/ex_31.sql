Select distinct Classes.class, country from Classes 
left join Ships on Ships.class = Classes.class
where bore >= 16




Для классов кораблей, калибр орудий которых не менее 16 дюймов, укажите класс и страну.
