# Aggregate Functions

USE employees;

# Using COUNT and GROUP BY
SELECT COUNT(*), gender FROM employees GROUP BY gender;

# Using AVG
SELECT AVG(DATEDIFF(hire_date, birth_date))/365 AS Average_age  FROM employees;

# Using MIN
SELECT MIN(DATEDIFF(hire_date, birth_date))/365 AS Min_age  FROM employees;

# Using MAX
SELECT MAX(DATEDIFF(hire_date, birth_date))/365 AS Max_age  FROM employees;

# Using DISTINCT
SELECT DISTINCT first_name FROM employees;
# Functionally Identical:
SELECT first_name FROM employees GROUP BY first_name;


#  This counts how many people have the same name
SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name ORDER BY COUNT(first_name) DESC ;

