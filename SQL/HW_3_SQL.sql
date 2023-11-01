select employee_name
from employees;


select monhtly_salary from salary_1 
where salary_1.id  (select salary_id from employees
join employee_salary on employees.id = employee_id);
	
