COPY departments (dept_no, dept_name)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/departments.csv'
DELIMITER ',' CSV HEADER;

COPY employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/employees.csv' 
DELIMITER ',' CSV HEADER;

COPY dept_emp(emp_no, dept_no, from_date, to_date)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/dept_emp.csv' 
DELIMITER ',' CSV HEADER;

COPY dept_manager(dept_no, emp_no, from_date, to_date)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/dept_manager.csv' 
DELIMITER ',' CSV HEADER;

COPY salaries(emp_no, salary, from_date, to_date)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/salaries.csv' 
DELIMITER ',' CSV HEADER;

COPY titles(emp_no, title, from_date, to_date)
FROM '/Users/crobinson1205/CU-BRK-DATA-PT-10-2019-U-C/homework/09-SQL/Instructions/data/titles.csv' 
DELIMITER ',' CSV HEADER;