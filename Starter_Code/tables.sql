--Create Table for departments--
Create Table departments(
	dept_no Char(4) Not Null,
	dept_name Char Not Null
);

--Create Table dept_emp--
Create Table dep_emp(
	emp_no Int Not Null,
	dept_no Varchar Not Null
);

--Create Table for dept_manager--
Create Table