USE employees;

# SELECTS employees hire on 1985-01-01
# Using =
SELECT * FROM  employees WHERE hire_date = '1985-01-01';

#  We are selecting first names where they have sus in their name
# Using LIKE
SELECT first_name FROM employees WHERE first_name LIKE '%sus%';


# Using BETWEEN
SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN  10026 AND 10082;

# Using IN
SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

# Using operators
SELECT  emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;

# Using multiple operators
SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 20000 AND last_name IN ('Herber', 'Baek') OR first_name = 'Shridhar';

# You have to make sure you change a parenthesis if you are chaining if i didnt have it, it would return females also
SELECT  first_name, last_name, gender FROM employees WHERE (last_name = 'Bolotov' OR last_name = 'Baek') AND gender = 'M';

