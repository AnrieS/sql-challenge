DROP TABLE IF EXISTS departments, employees, titles, dep_emp, dept_manager, salaries
SET datestyle = "MDY";

--Create Table for departments--
Create Table departments(
	dept_no Varchar Not Null Primary key,
	dept_name Varchar Not Null
);


--Create Table for titles--
Create Table titles(
	title_id VARCHAR(30) Not Null Primary key,
	title VARCHAR(30)
);

--Create Table for employees--
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date VARCHAR NOT NULL, --Correct line of code: birth_date DATE NOT NULL--
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date VARCHAR NOT NULL, --Correct line of code: hire_date DATE NOT NULL--
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

--my computer will not import the date as a DATE datatype so I have to change it manually, after running tests
--talking to learning assistants and changing the configuration of my sql, I still can't change the datatype by importing
--so I changed edited the datatype manually--
ALTER TABLE employees
ADD COLUMN new_birth_date DATE,
ADD COLUMN new_hire_date DATE;

-- Update the new columns by converting the VARCHAR values to DATE
UPDATE employees
SET new_birth_date = birth_date::DATE,
    new_hire_date = hire_date::DATE; 

-- Drop the old VARCHAR columns
ALTER TABLE employees
DROP COLUMN birth_date,
DROP COLUMN hire_date;

-- Rename the new columns to match the original names
ALTER TABLE employees
RENAME COLUMN new_birth_date TO birth_date;

ALTER TABLE employees
RENAME COLUMN new_hire_date TO hire_date;

--Create Table dept_emp--
Create Table dep_emp(
	emp_no INT Not Null,
	dept_no Varchar(5) Not Null,
	Foreign Key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no)
);


--Create Table for dept_manager--
Create Table dept_manager(
	dept_no VARCHAR Not Null,
	emp_no INT Not Null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--Create Table for salaries--
Create Table salaries(
	emp_no INT Not Null,
	salary Int Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
Select * From dep_emp;
--SELECT current_user;--
--Grant SELECT permission on a table employees ;--
--GRANT SELECT ON TABLE employees TO postgres;--			

