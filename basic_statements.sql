USE codeup_test_db;

# This populated our data
INSERT INTO albums (artist, record_name, release_date, sales, genre) VALUES ('Tupac', '2Pacalyse Now!', 1991, 0.923, 'hiphop');

#  We typed SELECT * FROM albums;    and it selected our data

INSERT INTO albums (artist, record_name, release_date, sales, genre) VALUES ('Backstreet Boys', 'Millennium', 1999, 24, 'pop');

#  SELECT * FROM albums WHERE artist = 'Tupac';     You can filter with WHERE


#  USING OPERATORS

#  SELECT artist, record_name FROM albums WHERE sales < 1;  this gets the albums that have sales less than  million

#  SELECT record_name, artist FROM albums WHERE sales BETWEEN 5 AND 50;


# Using AS
# SELECT record_name AS artist, artist FROM albums WHERE sales BETWEEN 5 AND 50;


# Using UPDATE
# This updated the name Tupac to 2Pac
# UPDATE albums SET artist = '2Pac' WHERE artist = 'Tupac';

# Another example is
# UPDATE albums SET artist = 'Tupac Shakur' WHERE artist = '2Pac' AND sales < 1;


#  This is how you modify columns
# ALTER TABLE albums MODIFY COLUMN release_date DATE;

# We change the name from artist to Artist
# ALTER TABLE albums CHANGE COLUMN artist Artist VARCHAR(35);


# DELETE
# DELETE FROM albums WHERE id = 2;

#  OR you can delete everything with
#  TRUNCATE albums
