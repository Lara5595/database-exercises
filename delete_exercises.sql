# Albums released after 1991
SELECT * FROM albums WHERE release_date > 1991;

# Albums with the genre 'disco'
SELECT * FROM albums WHERE genre = 'disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT * FROM albums WHERE Artist = 'Whitney Houston';

# Convert the SELECT statements to DELETE.
DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE Artist = 'Michael Jackson';


# Use the MySQL command line client to make sure your records really were removed.
# They were but i put everything back to normal