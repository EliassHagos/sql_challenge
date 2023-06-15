CREATE TABLE departments (
dept_no VARCHAR,
dept_name VARCHAR,
PRIMARY KEY(dept_no)
	
--------------------------------------
CREATE TABLE department_employees(
emp_no VARCHAR,
dept_no VARCHAR,
PRIMARY KEY(emp_no,dept_no)
);

---------------------------------------
CREATE TABLE department_managers (
dept_no VARCHAR(4) NOT NULL,
emp_no VARCHAR(6) NOT NULL,
PRIMARY KEY(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
	
-----------------------------------
CREATE TABLE employees(
emp_no VARCHAR(6) NOT NULL,
emp_title VARCHAR(30) NOT NULL,
birth_date VARCHAR NOT NULL, 
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(6) NOT NULL,
hire_date VARCHAR NOT NULL,
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

-------------------------------
CREATE TABLE salaries(
emp_no VARCHAR(6) NOT NULL,
salary INTEGER NOT NULL,
PRIMARY KEY(emp_no)
);

----------------------
CREATE TABLE titles(
title_id VARCHAR(5) NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY(title_id)
);