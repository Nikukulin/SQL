




/*1*/
select employees.employee_name,salary.monthly_salary from employees 
join employee_salary
on employees.id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id;

/*2*/
select employees.employee_name from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id 
where monthly_salary < 2000;

/*3*/
select salary.monthly_salary from salary
join employee_salary
on salary.id = employee_salary.salary_id 
full join employees 
on employees.id = employee_salary.employee_id
where employees.id is null;
/*4*/
select salary.monthly_salary from salary
join employee_salary
on salary.id = employee_salary.salary_id 
full join employees 
on employees.id = employee_salary.employee_id
where employees.id is null and monthly_salary < 2000;
/*5*/
select employees.employee_name from employees
full join employee_salary
on employees.id = employee_salary.employee_id 
full join salary 
on employee_salary.salary_id = salary.id
where monthly_salary is null;
/*6*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id;
/*7*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

/*8*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

/*9*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%QA%';

/*10*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Manual%' and role_name like '%QA%';

/*11*/
select employees.employee_name,role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where role_name like '%Automation%' and role_name like '%QA%';
/*12*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Junior%';
/*13*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Middle%';
/*14*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Senior%';
/*15*/
select salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';
/*16*/
select salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';
/*17*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Junior%'
and role_name like '%Python%';
/*18*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
full join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Middle%' 
and role_name like '%JavaScript%';
/*19*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Senior%'
and role_name like '%Java%';
/*20*/
select employees.employee_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Junior%'
and role_name like '%QA%';
/*21*/
select avg(salary.monthly_salary) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%Junior%';
/*22*/
select SUM(salary.monthly_salary) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%';
/*23*/
select MIN(salary.monthly_salary) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%QA%';
/*24*/
select MAX(salary.monthly_salary) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where role_name like '%QA%';
/*25*/
select COUNT(role_name) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id = employees.id
where role_name like '%QA%';
/*26*/
select COUNT(role_name) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id = employees.id
where role_name like '%Middle%';
/*27*/
select COUNT(role_name) from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id = employees.id
where role_name like '%developer%';
/*28*/
select SUM(monthly_salary) from salary 
join employee_salary 
on salary.id = employee_salary.salary_id 
join roles_employee
on employee_salary.employee_id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
where role_name like '%developer%';
/*29*/
select employees.employee_name,role_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
order by monthly_salary;
/*30*/
select employees.employee_name,role_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;
/*31*/
select employees.employee_name,role_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where monthly_salary < 2300
order by monthly_salary;
/*32*/
select employees.employee_name,role_name,salary.monthly_salary from roles
join roles_employee
on roles.id = roles_employee.role_id
join employees
on roles_employee.employee_id  = employees.id
join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where monthly_salary in (1100,1500,2000) is not null
order by monthly_salary;









	
select * from roles;
select * from employee_salary;
select * from employees;
select * from salary;
select * from roles_salary;
select * from roles_employee;