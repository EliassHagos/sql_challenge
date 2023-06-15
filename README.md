# sql-challenge
# Employee Database Analysis

This project involves working with an employee database to perform data modeling, data engineering, and data analysis tasks. The database contains information about employees, departments, salaries, and more. The goal is to create an appropriate table schema, import the provided CSV files, and then perform various data analysis queries.

## Data Modeling

To begin with, an Entity Relationship Diagram (ERD) was created to visualize the relationships between the tables in the database. The ERD helps in understanding the structure of the data and the relationships between different entities.

The tables in the database were designed to have the following schemas:

### Employees Table
- emp_no: INTEGER (Primary Key)
- birth_date: DATE
- first_name: VARCHAR(30)
- last_name: VARCHAR(30)
- gender: VARCHAR(1)
- hire_date: DATE

### Departments Table
- dept_no: VARCHAR(4) (Primary Key)
- dept_name: VARCHAR(30)

### Department Managers Table
- dept_no: VARCHAR(4) (Foreign Key referencing Departments)
- emp_no: INTEGER (Foreign Key referencing Employees)
- from_date: DATE
- to_date: DATE

### Salaries Table
- emp_no: INTEGER (Foreign Key referencing Employees)
- salary: INTEGER
- from_date: DATE
- to_date: DATE

### Department Employees Table
- emp_no: INTEGER (Foreign Key referencing Employees)
- dept_no: VARCHAR(4) (Foreign Key referencing Departments)
- from_date: DATE
- to_date: DATE

### Titles Table
- emp_no: INTEGER (Foreign Key referencing Employees)
- title: VARCHAR(50)
- from_date: DATE
- to_date: DATE

## Data Engineering

After designing the table schemas, the next step was to import the provided CSV files into their respective tables. Each CSV file corresponds to a table in the database. The import process involved mapping the columns in the CSV files to the columns in the tables and inserting the data accordingly.

## Data Analysis

Once the data was successfully imported, several data analysis queries were performed on the database. Here are the results of the analysis:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

The SQL queries for these data analysis tasks were executed on the database, and the results were obtained.

Please refer to the SQL files for the specific queries used for the data analysis tasks.

## Conclusion

This project involved data modeling, data engineering, and data analysis on an employee database. By creating an appropriate table schema, importing data, and executing SQL queries, we were able to obtain valuable insights about the employees and departments in the organization.

For more details, please refer to the SQL files and the table schemas provided in the repository.