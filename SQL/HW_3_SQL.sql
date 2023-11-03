select employee_name
from employees;


select employee_name, monhtly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary_1 on employee_salary.salary_id = salary_1.id;
	
select employee_name from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary_1 on employee_salary.salary_id = salary_1.id;
where monhtly_salary < 2000;

select role_name, employee_name  from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join employees on employee_salary.employee_id = employees.id
where employee_name is null;

select employee_name  from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
where monhtly_salary is null ;

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id;

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like  '% Java %';

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like  '% Python %';

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like  '% QA %';

select employee_name, role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like  '% Automation QA %';

select employee_name, monhtly_salary, role_name from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.id = roles.id 
where role_name like '%Junior%';

select employee_name, monhtly_salary, role_name from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.id = roles.id 
where role_name like '%Middle%';

select employee_name, monhtly_salary, role_name from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.id = roles.id 
where role_name like '%Senior%';

select monhtly_salary, role_name from salary_1 
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like ('% Java %');

select monhtly_salary, role_name from salary_1 
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like ('% Python %');

select employee_name, monhtly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('Junior Python %');

select employee_name, monhtly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('Middle JavaScript %');

select employee_name, monhtly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('Senior Java %');

select monhtly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('Junior % QA %');

select avg(monhtly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('Junior %');

select sum(monhtly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('% JavaScript %');

select min(monhtly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('% QA %');

select max(monhtly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('% QA %');

select count(role_name) from roles
where role_name like ('% QA %');

select count(role_name) from roles
where role_name like ('Middle %');

select count(role_name) from roles
where role_name like ('% developer');

select sum(monhtly_salary) from salary_1
join employee_salary on salary_1.id = employee_salary.salary_id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like ('% developer');

select employee_name, role_name, monhtly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
order by monhtly_salary;

select employee_name, role_name, monhtly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monhtly_salary between 1700 and 2300
order by monhtly_salary;

select employee_name, role_name, monhtly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monhtly_salary < 2300
order by monhtly_salary;

select employee_name, role_name, monhtly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary_1 on employee_salary.salary_id = salary_1.id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where monhtly_salary in (1100, 1500, 2000)
order by monhtly_salary;



