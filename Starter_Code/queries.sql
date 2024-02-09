--number, last name, first name, sex, and salary of each employee--
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986--
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--List the manager of each department along with their department number, department name, employee number, last name, and first name--
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name--
SELECT de.dept_no, de.emp_no, e.first_name, e.last_name, d.dept_name
FROM dep_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B--
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--List each employee in the Sales department, including their employee number, last name, and first name--
SELECT d.dept_name, e.last_name, e.first_name, de.emp_no
FROM employees e
JOIN dep_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name--
SELECT d.dept_name, e.last_name, e.first_name, de.emp_no
FROM employees e
JOIN dep_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY d.dept_name ASC;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)--
SELECT last_name, count(emp_no) as frequency_of_name
FROM employees
GROUP BY last_name
ORDER BY frequency_of_name DESC;

