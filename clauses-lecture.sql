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
# We also you ORDERED BY
SELECT  first_name, last_name, gender FROM employees WHERE (last_name = 'Bolotov' OR last_name = 'Baek') AND gender = 'M' ORDER BY last_name;


# Using NOT BETWEEN
SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

# Using NOT LIKE
SELECT first_name, birth_date, hire_date FROM  employees WHERE birth_date NOT LIKE '195%' AND  hire_date NOT LIKE '199%';


SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;
