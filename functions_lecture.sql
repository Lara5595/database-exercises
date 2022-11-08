USE employees;

# Using CONCAT
SELECT CONCAT(first_name, ' ',  last_name) AS name FROM employees WHERE first_name = 'Maya' ORDER BY last_name;

# Using DAYOFMONTH
SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

# Using DATEDIFF()
SELECT DATEDIFF(now(), hire_date) FROM employees WHERE emp_no = 10006;

# There is also  DAY, MONTH , YEAR,  NOW , CURDATE, CURTIME,  UNIX_TIMESTAMP

