/*
1. List the following details of each employee: employee number, 
   last name, first name, sex, and salary.
*/
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaris.salary
From employees
LEFT JOIN salaris
on (employees.emp_no=salaris.emp_no)
ORDER BY employees.emp_no;

/*
2. List first name, last name, and hire date for employees who were hired in 1986.
*/
SELECT employees.first_name,employees.last_name,employees.hire_date
From employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/* 
3. List the manager of each department with the following information: 
   department number, department name, the manager's employee number, 
   last name, first name.
   Note: there appears to be more than one manager for some departments.
*/
SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
ORDER BY departments.dept_no;

/*
4. List the department of each employee with the following information: 
   employee number, last name, first name, and department name.
*/
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;


/*
5. List first name, last name, and sex for employees whose first name is 
   "Hercules" and last names begin with "B."
*/
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

/*
6. List all employees in the Sales department, including their 
   employee number, last name, first name, and department name.
*/
SELECT employees.emp_no, employees.last_name, first_name, dept_name
From employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

/*
7. List all employees in the Sales and Development departments, including 
   their employee number, last name, first name, and department name.
*/
SELECT employees.emp_no, employees.last_name, first_name, dept_name
From employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
-- Can use either OR  or  IN
--WHERE dept_name = 'Sales' OR dept_name = 'Development'; 
WHERE dept_name IN ('Sales', 'Development');

/*
8. In descending order, list the frequency count of employee last names, 
   i.e., how many employees share each last name.
*/
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;






