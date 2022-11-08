USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name LIKE 'E%' AND  first_name LIKE '%e';


# Find all employees born on Christmas — 842 rows.


