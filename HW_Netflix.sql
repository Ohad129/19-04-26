--Use DISTINCT to list all values from type
SELECT DISTINCT type
FROM netflix_movies_detailed_up_to_2025;

--Use DISTINCT to list 20 non-empty cast entries from Action movies
SELECT DISTINCT "cast"
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movie'
	AND genres LIKE '%Action%'
	AND "cast" NOT NULL
LIMIT 20;

--Find 5 action movies released after 2015
--Sort by highest rating first
--Alias output columns as movie and score
SELECT title as movie, release_year, rating as score
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movie'
  AND genres LIKE '%Action%'
  AND release_year >= 2015
ORDER BY rating DESC
LIMIT 5;

--Bonus: find drama titles where cast is NULL
SELECT title, release_year
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movie'
  AND genres LIKE '%Drama%'
  AND ("cast" IS NULL OR TRIM("cast") = '');
