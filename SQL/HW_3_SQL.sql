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