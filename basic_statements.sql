USE codeup_test_db;

# This populated our data
INSERT INTO albums (artist, record_name, release_date, sales, genre) VALUES ('Tupac', '2Pacalyse Now!', 1991, 0.923, 'hiphop');

#  We typed SELECT * FROM albums;    and it selected our data

INSERT INTO albums (artist, record_name, release_date, sales, genre) VALUES ('Backstreet Boys', 'Millennium', 1999, 24, 'pop');

#  SELECT * FROM albums WHERE artist = 'Tupac';     You can filter with WHERE


#  USING OPERATORS

#  SELECT artist, record_name FROM albums WHERE sales < 1;  this gets the albums that have sales less than  million

#  SELECT record_name, artist FROM albums WHERE sales BETWEEN 5 AND 50;