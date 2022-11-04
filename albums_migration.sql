USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INTEGER AUTO_INCREMENT,
    artist VARCHAR(35),
    record_name VARCHAR(65) ,
    release_date INTEGER ,
    sales DOUBLE,
    genre VARCHAR(35) NOT NULL,
    PRIMARY KEY(id)
);