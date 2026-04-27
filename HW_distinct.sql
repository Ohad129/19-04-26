CREATE TABLE MOVIES(
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	TITLE TEXT NOT NULL,
	GENRE TEXT NOT NULL,
	YEAR INT NOT NULL,
	LANGUAGE TEXT NOT NULL
);
INSERT INTO MOVIES
VALUES(1, 'Metro Rush', 'Action', 2005, 'English'),
(2, 'Quiet Lake', 'Drama', 2012, 'English'),
(3,'Night Pulse', 'Horror', 2018, 'Spanish'),
(4, 'Skyline Code', 'Action', 2021, 'English'),
(5,'Tiny Planet', 'Family', 2010, 'French'),
(6,' Silver Track', 'Thriller', 2016, 'Spanish'),
(7, 'Golden Path', 'Drama', 2016, 'French');

--Return the languages (no duplicaiton)
SELECT DISTINCT LANGUAGE
FROM MOVIES;

--Return the years (no duplicaiton) where genre is Drama or Action
SELECT DISTINCT YEAR
FROM MOVIES
WHERE GENRE = 'Action' or GENRE = 'Drama';

--Return genre-language pairs (no duplicaiton) sorted by language
SELECT DISTINCT GENRE, LANGUAGE
FROM MOVIES
ORDER BY LANGUAGE ASC;

--Bonus: return count of distinct genres using COUNT(DISTINCT genre)
SELECT count(DISTINCT GENRE)
FROM MOVIES;
