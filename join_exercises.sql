USE employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT dept_name AS Department_Name FROM departments;



# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name)
    AS Department_Manager
    FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
    WHERE dept_manager.to_date = '9999-01-01' ORDER BY Department_Name;

# You can put ' ' on the alias so you are able to space

# Find the name of all departments currently managed by women.

SELECT departments.dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name)
AS Department_Manager
FROM employees
    JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F' ORDER BY Department_Name;


# Find the current titles of employees currently working in the Customer Service department.

# added note
