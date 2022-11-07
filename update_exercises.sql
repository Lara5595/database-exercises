# All albums in your table.
SELECT record_name FROM albums;

# All albums released before 1980
SELECT record_name FROM albums WHERE release_date< 1980;

# All albums by Michael Jackson
SELECT record_name FROM albums WHERE artist = 'Michael Jackson';

# Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10;

# Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = (1800) WHERE release_date < 1980;

# Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET Artist = 'Peter Jackson'
WHERE Artist = 'Michael Jackson';

# Add SELECT statements after each UPDATE so you can see the results of your handiwork.

