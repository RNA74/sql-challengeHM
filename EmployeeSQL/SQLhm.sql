CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR	
); 


CREATE TABLE dept_emp(
emp_no INT ,
dept_no VARCHAR ,	
FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
FOREIGN KEY (dept_no)REFERENCES departments(dept_no)	
);

CREATE TABLE dept_manager(
dept_no VARCHAR,	
emp_no INT PRIMARY KEY,
FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
FOREIGN KEY (dept_no)REFERENCES departments(dept_no)
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR ,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE,
FOREIGN KEY (emp_title_id)REFERENCES titles (title_id)	
);



CREATE TABLE salaris(
emp_no INT PRIMARY KEY,
salary INT,
FOREIGN KEY (emp_no)REFERENCES employees(emp_no) 	
); 


CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY,
title VARCHAR
 	
); 

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaris;
SELECT * FROM titles;