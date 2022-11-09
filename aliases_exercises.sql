USE employees;

SELECT CONCAT(emp_no,  ' - '  , last_name,' ', first_name) AS full_name, birth_date AS DOB FROM employees LIMIT 10;


# INDEXES

SHOW INDEXES FROM employees;

SHOW INDEXES FROM salaries;

SELECT salary FROM salaries WHERE salary BETWEEN  50000 AND 70000;

# ALTER TABLE salaries ADD INDEX salary_index (salary);
#
# ALTER TABLE salaries DROP INDEX salary_index;
# ALTER TABLE tbl_name ADD UNIQUE (column_name ...)



#  ASSIGNMENT
# USE codeup_test_db;
#
# SHOW TABLES;
#
# SHOW INDEXES FROM albums;
#
# ALTER TABLE albums ADD UNIQUE unique_artist_name (artist, record_name);
# ALTER TABLE albums DROP INDEX unique_artist_name;