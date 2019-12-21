--Question 1
select 
employees.emp_no
,last_name
,first_name
,gender
,salaries.salary
from employees
left join salaries on employees.emp_no = salaries.emp_no;

--Question 2
select 
employees.emp_no
,last_name
,first_name
,gender
,employees.hire_date as "Hired"
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
where date_part('year',employees.hire_date) = '1986';

--Question 3
select 
dept_manager.dept_no
,departments.dept_name
,dept_manager.emp_no
,employees.last_name
,employees.first_name
,employees.hire_date
,dept_emp.to_date
from dept_manager
left join departments on dept_manager.dept_no = departments.dept_no
left join employees on dept_manager.emp_no = employees.emp_no
left join dept_emp on dept_manager.emp_no = dept_emp.emp_no

--Question 4
select
employees.emp_no
,last_name
,first_name
,departments.dept_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join departments on dept_emp.dept_no = departments.dept_no

--Question 5
select 
emp_no
,last_name
,first_name
from employees
where first_name = 'Hercules'
and last_name like 'H%'

--Question 6
select
departments.dept_name
,employees.emp_no
,last_name
,first_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' 

--Question 7
select
departments.dept_name
,employees.emp_no
,last_name
,first_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development'







