create table employees(
id serial  primary key,
employee_name varchar(50) not null
);


insert into employees(employee_name)
values	('Christopher_Caldwell'),
		('Chris_Carter'),
		('John_Jenkins'),
		('Cory_White'),
		('Georg_Jackson'),
		('Jose_Allen'),
		('Louis_Matthews'),
		('Douglas_Wright'),
		('Charles_Wright'),
		('Carl_Johnson'),
		('Charles_Parker'),
		('Mark_Alvarado'),
		('Charles_Stewart'),
		('Paul_Roberts'),
		('Rick_Alvarez'),
		('Jimmy_Morris'),
		('Jimmy_Lopez'),
		('Craig_Ellis'),
		('Thomas_Brown'),
		('Steven_Smith'),
		('Tom_Jones'),
		('Jason_Soto'),
		('Henry_Brown'),
		('Jim_McDaniel'),
		('Richard_Robbin'),
		('Neil_Brown'),
		('Zachary_Sanchez'),
		('Robert_Johnson'),
		('Lawrence_Rios'),
		('Robert_Morales'),
		('Armando_King'),
		('Claude_Reese'),
		('Andrew_Ballard'),
		('Wade_Spencer'),
		('Angel_Watson'),
		('George_Smith'),
		('Harold_Gardner'),
		('Gilbert_Foster'),
		('George_Daniels'),
		('Frank_Gordon'),
		('Javier_Smith'),
		('William_Malone'),
		('Jeffery_Hall'),
		('Donald_White'),
		('Gary_Mason'),
		('Kyle_Cannon'),
		('James_Gray'),
		('Clyde_Simpson'),
		('Charles_Black'),
		('John_Morales'),
		('Calvin_Boone'),
		('George_Willis'),
		('Jerry_Williams'),
		('James_Olson'),
		('Don_Williams'),
		('Joseph_Scott'),
		('Michael_Morris'),
		('Jesse_Rodgers'),
		('Erik_Allen'),
		('Michael_Matthews'),
		('Robert_Weaver'),
		('Jason_Stokes'),
		('Mark_Cruz'),
		('Charles_Thomas'),
		('James_Moss'),
		('Wayne_Mitchell'),
		('Justin_Ward'),
		('Robert_Taylor'),
		('Dennis_Bell'),
		('Matthew_Wagner');
		

create table salary_1(
id serial primary key,
monhtly_salsry int not null
);

alter table salary_1 
rename column monhtly_salsry to monhtly_salary_1;

insert into salary_1 (monhtly_salary_1)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
alter table salary_1 
rename column monhtly_salary_1 to monhtly_salary;

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary (employee_id,salary_id)
values  (1, 3),
		(2, 2),
		(3, 4),
		(4, 8),
		(5, 12),
		(6, 5),
		(7, 14),
		(8, 9),
		(9, 11),
		(10, 15),
		(11, 6),
		(12, 4),
		(13, 3),
		(14, 7),
		(15, 9),
		(16, 10),
		(17, 11),
		(18, 2),
		(19, 1),
		(20, 5),
		(51, 3),
		(50, 4),
		(52, 6),
		(53, 7),
		(54, 3),
		(55, 11),
		(56, 14),
		(57, 12),
		(58, 11),
		(59, 5),
		(60, 3),
		(22, 1),
		(23, 7),
		(24, 5),
		(25, 3),
		(26, 8),
		(27, 9),
		(34, 13),
		(35, 11),
		(36, 3),
		(37, 15),
		(38, 12);
		
create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);
 
insert into roles 
values  (1, 'Junior Python developer'),
		(2, 'Middle Python developer'),
		(3, 'Senior Python developer'),
		(4, 'Junior Java developer'),
		(5, 'Middle Java developer'),
		(6, 'Senior Java developer'),
		(7, 'Junior JavaScript developer'),
		(8, 'Middle JavaScript developer'),
		(9, 'Senior JavaScript developer'),
		(10, 'Junior Manual QA engineer'),
		(11, 'Middle Manual QA engineer'),
		(12, 'Senior Manual QA engineer'),
		(13, 'Project Manager'),
		(14, 'Designer'),
		(15, 'HR'),
		(16, 'CEO'),
		(17, 'Sales manager'),
		(18, 'Junior Automation QA engineer'),
		(19, 'Middle Automation QA engineer'),
		(20,'Senior Automation QA engineer');

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles (id)
);

insert into roles_employee (employee_id, role_id)
values  (1, 3),
		(2, 2),
		(3, 4),
		(4, 8),
		(5, 12),
		(6, 5),
		(7, 14),
		(8, 9),
		(9, 11),
		(10, 15),
		(11, 6),
		(12, 4),
		(13, 3),
		(14, 7),
		(15, 9),
		(16, 10),
		(17, 11),
		(18, 2),
		(19, 1),
		(20, 5),
		(51, 3),
		(50, 4),
		(52, 6),
		(53, 7),
		(54, 3),
		(55, 11),
		(56, 14),
		(57, 12),
		(58, 11),
		(59, 5),
		(60, 3),
		(22, 1),
		(23, 7),
		(24, 5),
		(25, 3),
		(26, 8),
		(27, 9),
		(34, 13),
		(35, 11),
		(36, 3),
		(37, 15),
		(38, 12);
	

select * from roles_employee;





