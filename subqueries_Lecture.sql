#Subqueries
USE employees;

SELECT birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);


# From our employees database, we can use this example query to find all the department managers names and birth dates:
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;



# Subqueries can be also useful while you are building INSERT / UPDATE statements where you don't know exactly what ID needs to be inserted as a foreign key as the following example demonstrates:

INSERT INTO users (name, email, role_id)
VALUES('fer', 'fer@codeup.com',
       (SELECT id FROM roles WHERE name = 'commenter')
      );


# The following example uses a subquery to get the primary key for the roles table by only knowing the name of the role and just modifies a specific user by their email.

UPDATE users
SET role_id = (SELECT id FROM roles WHERE name = 'admin')
WHERE email = 'fer@codeup.com';




# USE codeup_test_db;
#
#
# INSERT INTO preferences (person_id, album_id) values ((SELECT person_id FROM persons WHERE first_name = 'Tareq'),
#                                                       (SELECT id FROM albums WHERE record_name = 'Led Zeppelin IV'));
#
# DELETE FROM preferences WHERE person_id = 11;

