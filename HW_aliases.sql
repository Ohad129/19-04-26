DROP TABLE MOVIES;
CREATE TABLE MOVIES(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	TITLE TEXT NOT NULL,
	GENRE TEXT NOT NULL,
	YEAR INT NOT NULL,
	RATING REAL NOT NULL,
	MINUTES INT NOT NULL
);
INSERT INTO MOVIES
VALUES(1, 'Metro Rush', 'Action', 2005, 7.9, 118),
(2, 'Quiet Lake', 'Drama', 2012, 8.1, 124),
(3,'Night Pulse', 'Horror', 2018, 6.8, 95),
(4, 'Skyline Code', 'Action', 2021, 7.4, 109);

--Select title, genre, and year with aliases: movie_name, type, release_year
--Add computed column rating_bucket = rating * 10 and alias it
--Sort by rating_bucket descending, then movie_name ascending
SELECT
TITLE AS movie_name,
GENRE AS type,
YEAR AS release_year,
RATING * 10 AS rating_bucket 
FROM MOVIES
ORDER BY rating_bucket DESC, movie_name ASC;

--Try a second version without aliases and compare readability
SELECT TITLE, GENRE, YEAR, RATING
FROM MOVIES
ORDER BY RATING DESC, TITLE ASC;
