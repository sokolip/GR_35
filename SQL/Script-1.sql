create table City(
id serial primary key,
city_name varchar (40) unique not null
)

create table Person(
	id serial primary key,
	person_name varchar (40),
	city_id int not null
)

insert into City(city_name)
values  ('Antalya'),
		('Berlin'),
		('Barselona'),
		('Bishkek')
		
select * from city 		

insert into person(person_name, city_id)
values  ('Vadim', 1),
		('Inna', 3),
		('Ivan', 2),
		('Kate', 7)
		

select * from city 	
select * from person

select person.person_name, city.city_name 
from Person join city 
on city.id = person.city_id;

select city.id, city.city_name, person.city_id, person.person_name
from city left join person 
on person.city_id = city.id;

select city.id, city.city_name, person.city_id, person.person_name
from city right join person 
on person.city_id = city.id;

select city.id, city.city_name, person.city_id, person.person_name
from city full outer join person 
on person.city_id = city.id;


select city.id, city.city_name, person.city_id, person.person_name
from city cross join person;







