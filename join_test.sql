#  This creates the database
CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id) VALUES
                                             ('David', 'david@email.com',2),
                                             ('Mason', 'mason@email.com', 2),
                                             ('Billy', 'billy@email.com', 2),
                                             ('Javier', 'javier@email.com', NULL);


SELECT users.name AS user_name, roles.name AS role_name FROM users JOIN roles ON users.role_id = roles.id WHERE roles.id = 2;


#  LEFT JOIN SHOWS THE PEOPLE THAT HAVE NULL ON THEIR ROLE NAME
SELECT users.name AS user_name, roles.name AS role_name FROM users LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN SHOWS NULL ON THE USERNAME
SELECT users.name AS user_name, roles.name AS role_name FROM users RIGHT JOIN roles ON users.role_id = roles.id;

