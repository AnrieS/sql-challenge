# sql-challenge

README sql-challenge

For this Module challenge I had the opportunity to play as a new data engineer at Pewlett Hackard (fictional company and scenario). I was tasked to do a research project about the people whom the company employed during the 1980s and the 1990s. For this project, I designed tables and held data from CSV files into SQL databases then answer the following questions about the data. I performed data modelling, data engineering, and data analysis to find collect and analyze the data.

I first created the tables for each CSV files; “titles”, “employees”, “departments”, “dept_manager”, “dept_emp”, and salaries respectively. Using the CSV provided I imported each file in the corresponding SQL tables. I created primary keys and foreign keys according to the data model and assigned each data type to the correct data type. However, as I was importing the data for the employees CSV, I came across an error in my input code, my data type was importing the DATE incorrectly, to solve the issue I had to import the data as VARCHAR and assigned the data as DATE later in the SQL script. After importing the data, I started creating the queries for the questions.

The first questions were to list employee number, last name, first name, sex, and the salary of each employee. I used simple ‘select’ function to select corresponding data and used the ‘join’ method to find the salary of each employee. The second question was much the same, find the correct data, use the ‘select’ function and use the join method to find the employees who were hired in 1986. The same process was used to find the list of managers of each department along with the department name, employee number, last name and first name. The same can be said for the 4th question.

The last few questions were much the same as the previous question, however a few changes were made in the SQL script to solve the issue and answer the question. By using ‘where’ method I can find employees with the name ‘Hercules’ and with the last beginning with the letter ‘B’. This process was used for the rest of the questionnaire and solve the problems.
