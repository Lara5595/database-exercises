# USE employees;
#
# SELECT COUNT(emp_no) FROM salaries;
#
# # Using JOIN so you can use salaries and employees
#
# SELECT employees.last_name AS name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no;
#
# SELECT employees.emp_no AS EmployeeNum, CONCAT(employees.first_name, ' ' ,employees.last_name) AS name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no;

USE codeup_test_db;

#  This creates a table
CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.person_id, a.record_name FROM persons p JOIN albums a ON p.album_id = a.record_name;

CREATE TABLE preferences (
                             person_id INT NOT NULL,
                             album_id INT NOT NULL
);


INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT p.first_name, a.record_name AS name FROM persons p JOIN preferences pref ON p.person_id = pref.person_id JOIN albums a on pref.album_id = a.id;




#  Jason's Lecture

# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        can_edit TINYINT NOT NULL,
#                        can_post TINYINT NOT NULL,
#                        PRIMARY KEY (id)
# );
#
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(255),
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
#
# );

# SELECT *  FROM users;  List the users


# This joins the tables together

# SELECT users.name as user_name, roles.name as role_name FROM users JOIN roles ON users.role_id = roles.id;

#  Another ex
# SELECT users.name as user_name, roles.name as role_name, roles.can_edit, roles.can_post
# FROM users
# JOIN roles ON users.role_id = roles.id;


#  LEFT JOIN
# IF a user has null it will return everything null
# SELECT users.name as user_name, roles.name as role_name, roles.can_edit, roles.can_post
# FROM users
#          LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN        WONT SHOW THE NULL IT WONT PUT THE USER







#  another ex
#
# CREATE TABLE departments (
#                              id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                              name VARCHAR(100) NOT NULL,
#                              PRIMARY KEY (id)
# );
# INSERT INTO departments (name) VALUES
#                                    ("human resources"),
#                                    ("finance"),
#                                    ("sales");
#
# CREATE TABLE employees (
#                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                            first_name VARCHAR(255),
#                            last_name VARCHAR(255),
#                            email VARCHAR(100) NOT NULL,
#                            PRIMARY KEY (id)
# );
# INSERT INTO employees (first_name, last_name, email) VALUES
#                                                          ("Jason", "Merrell", "jason.merrell@codeup.com"),
#                                                          ("Kelly", "Clarkson", "kelly@clarkson.com"),
#                                                          ("Billy", "Bob", "billy@bob.com"),
#                                                          ("Ariana", "Grande", "ariana@grande.com");
#
# CREATE TABLE dept_emp (
#                           dept_no INT UNSIGNED NOT NULL,
#                           emp_no INT UNSIGNED NOT NULL,
#                           from_date DATE NOT NULL,
#                           to_date DATE NOT NULL,
#                           FOREIGN KEY (emp_no) REFERENCES employees (id),
#                           FOREIGN KEY (dept_no) REFERENCES departments (id)
# );
# INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date) VALUES
#     (1, 1, "2012-01-01", "9999-01-01");
#