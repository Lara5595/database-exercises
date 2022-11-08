USE employees;

# LIMIT and OFFSET

# We are setting a LIMIT
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 50;

# We are using LIMIT and OFFSET
SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 50 OFFSET 50;


