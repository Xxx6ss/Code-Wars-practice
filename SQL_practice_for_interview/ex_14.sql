Select Ships.class, name, country from Ships left join Classes on Classes.class = Ships.class
where Classes.numGuns >= 10
