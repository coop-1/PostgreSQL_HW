drop table if exists employees cascade;

Create Table employees
(
	emp_no int primary key 
	,birth_date date not NULL
	,first_name varchar(20) not NULL
	,last_name varchar(20) not NULL
	,gender varchar(1) not NULL
	,hire_date date not NULL
);

drop table if exists departments cascade;

Create Table departments 
(
	dept_no varchar(6) primary key
	,dept_name varchar(25) not NULL
);

drop table if exists dept_emp cascade;

Create Table dept_emp
(
	emp_no int not NULL
	,dept_no varchar(6) not NULL
	,from_date date not NULL
	,to_date date not NULL
	,foreign key (emp_no) references employees(emp_no)
	,foreign key (dept_no) references departments(dept_no)
);

drop table if exists dept_manager cascade;

Create Table dept_manager
(
	emp_no int not NULL
	,dept_no varchar(6) not NULL
	,from_date date not NULL
	,to_date date not NULL
	,foreign key (emp_no) references employees(emp_no)
	,foreign key (dept_no) references departments(dept_no)
);

drop table if exists salaries cascade;

Create Table salaries
(
	emp_no int not NULL
	,salary int not NULL
	,from_date date not NULL
	,to_date date not NULL
	,foreign key (emp_no) references employees(emp_no)
);

drop table if exists titles cascade;

Create Table titles
(
	emp_no int not NULL
	,title varchar(50) not NULL
	,from_date date not NULL
	,to_date date not NULL
	,foreign key (emp_no) references employees(emp_no)
);

