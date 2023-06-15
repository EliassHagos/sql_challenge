--------------------------------------------------------
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;
--------------------------------------------------------
--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
---------------------------------------------------------
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT department_managers.dept_no,department_managers.emp_no,departments.dept_name,last_name,first_name
from department_managers
inner join departments on department_managers.dept_no=departments.dept_no
INNER JOIN employees ON
department_managers.emp_no=employees.emp_no;
---------------------------------------------------------
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT department_employees.dept_no,department_employees.emp_no,last_name,first_name,dept_name
FROM department_employees
INNER JOIN employees ON
department_employees.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=department_employees.dept_no
-----------------------------------------------------------
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'
-----------------------------------------------------------
--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT last_name, first_name, dept_name
FROM department_employees
INNER JOIN employees ON
employees.emp_no=department_employees.emp_no
INNER JOIN departments ON
department_employees.dept_no=departments.dept_no
WHERE dept_name = 'Sales'
-------------------------------------------------------------
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, dept_name
FROM department_employees
INNER JOIN employees ON
employees.emp_no=department_employees.emp_no
INNER JOIN departments ON
department_employees.dept_no=departments.dept_no
WHERE dept_name = 'Sales' OR dept_name='Development'
--------------------------------------------------------------
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
