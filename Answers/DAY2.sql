
-- Table 1: MovieDetails
CREATE TABLE MovieDetails (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(100),
    Director VARCHAR(100),
    ReleaseYear INT
);

-- Table 2: MovieFinancials
CREATE TABLE MovieFinancials (
    FinancialID INT PRIMARY KEY,
    BudgetUSD DECIMAL(12,2),
    BoxOfficeUSD DECIMAL(12,2),
    MovieID INT FOREIGN KEY REFERENCES MovieDetails(MovieID)
);

-- Table 3: MovieRatingsDuration
CREATE TABLE MovieRatingsDuration (
    RatingID INT PRIMARY KEY,
    DurationMin INT,
    Rating DECIMAL(12,2),
    Language VARCHAR(100),
    Country VARCHAR(100),
    MovieID INT FOREIGN KEY REFERENCES MovieDetails(MovieID)
);

-- Insert Records into MovieDetails
INSERT INTO MovieDetails (MovieID, Title, Genre, Director, ReleaseYear) VALUES
(1, 'Inception', 'Sci-Fi', 'Christopher Nolan', 2010),
(2, 'The Godfather', 'Crime', 'Francis Ford Coppola', 1972),
(3, 'The Dark Knight', 'Action', 'Christopher Nolan', 2008),
(4, 'Pulp Fiction', 'Crime', 'Quentin Tarantino', 1994),
(5, 'Forrest Gump', 'Drama', 'Robert Zemeckis', 1994),
(6, 'The Matrix', 'Sci-Fi', 'Lana Wachowski', 1999),
(7, 'Gladiator', 'Action', 'Ridley Scott', 2000),
(8, 'Titanic', 'Romance', 'James Cameron', 1997),
(9, 'Avatar', 'Sci-Fi', 'James Cameron', 2009),
(10, 'Interstellar', 'Sci-Fi', 'Christopher Nolan', 2014),
(11, 'Jaws', 'Thriller', 'Steven Spielberg', 1975),
(12, 'Shutter Island', 'Mystery', 'Martin Scorsese', 2010),
(13, 'The Avengers', 'Action', 'Joss Whedon', 2012),
(14, 'Frozen', 'Animation', 'Chris Buck', 2013),
(15, 'Up', 'Animation', 'Pete Docter', 2009),
(16, 'Toy Story', 'Animation', 'John Lasseter', 1995),
(17, 'Coco', 'Animation', 'Lee Unkrich', 2017),
(18, 'The Lion King', 'Animation', 'Roger Allers', 1994),
(19, 'Finding Nemo', 'Animation', 'Andrew Stanton', 2003),
(20, 'The Social Network', 'Drama', 'David Fincher', 2010);

-- Insert Records into MovieFinancials
INSERT INTO MovieFinancials (FinancialID, BudgetUSD, BoxOfficeUSD, MovieID) VALUES
(1, 160000000, 836800000, 1),
(2, 6000000, 246120974, 2),
(3, 185000000, 1004558444, 3),
(4, 8000000, 214179088, 4),
(5, 55000000, 683255000, 5),
(6, 63000000, 466400000, 6),
(7, 103000000, 457640427, 7),
(8, 200000000, 2187463944, 8),
(9, 237000000, 2920000000, 9),
(10, 165000000, 677471339, 10),
(11, 7000000, 472000000, 11),
(12, 80000000, 294800000, 12),
(13, 220000000, 1518812988, 13),
(14, 150000000, 1276480337, 14),
(15, 175000000, 735099082, 15),
(16, 30000000, 394436586, 16),
(17, 175000000, 807082196, 17),
(18, 45000000, 968500000, 18),
(19, 94000000, 940335536, 19),
(20, 40000000, 224920315, 20);

-- Insert Records into MovieRatingsDuration
INSERT INTO MovieRatingsDuration (RatingID, DurationMin, Rating, Language, Country, MovieID) VALUES
(1, 148, 8.8, 'English', 'USA', 1),
(2, 175, 9.2, 'English', 'USA', 2),
(3, 152, 9.0, 'English', 'USA', 3),
(4, 154, 8.9, 'English', 'USA', 4),
(5, 142, 8.8, 'English', 'USA', 5),
(6, 136, 8.7, 'English', 'USA', 6),
(7, 155, 8.5, 'English', 'USA', 7),
(8, 195, 7.9, 'English', 'USA', 8),
(9, 162, 7.8, 'English', 'USA', 9),
(10, 169, 8.6, 'English', 'USA', 10),
(11, 124, 8.1, 'English', 'USA', 11),
(12, 138, 8.2, 'English', 'USA', 12),
(13, 143, 8.0, 'English', 'USA', 13),
(14, 102, 7.4, 'English', 'USA', 14),
(15, 96, 8.3, 'English', 'USA', 15),
(16, 81, 8.3, 'English', 'USA', 16),
(17, 105, 8.4, 'English', 'USA', 17),
(18, 88, 8.5, 'English', 'USA', 18),
(19, 100, 8.1, 'English', 'USA', 19),
(20, 120, 7.8, 'English', 'USA', 20);


-- Insert Indian movies into MovieDetails
INSERT INTO MovieDetails (MovieID, Title, Genre, Director, ReleaseYear) VALUES
(21, 'KGF', 'Action', 'Prashanth Neel', 2018),
(22, 'RRR', 'Action, Drama', 'S. S. Rajamouli', 2022),
(23, 'Dangal', 'Drama, Sports', 'Nitesh Tiwari', 2016),
(24, 'Baahubali', 'Action, Fantasy', 'S. S. Rajamouli', 2015),
(25, '3 Idiots', 'Comedy, Drama', 'Rajkumar Hirani', 2009),
(26, 'PK', 'Comedy, Sci-Fi', 'Rajkumar Hirani', 2014),
(27, 'Drishyam', 'Crime, Drama', 'Nishikant Kamat', 2015),
(28, 'Sholay', 'Action, Adventure', 'Ramesh Sippy', 1975),
(29, 'Pushpa', 'Action, Drama', 'Sukumar', 2021),
(30, 'Lagaan', 'Drama, Sports', 'Ashutosh Gowariker', 2001);

-- Insert financial records for Indian movies into MovieFinancials
INSERT INTO MovieFinancials (FinancialID, BudgetUSD, BoxOfficeUSD, MovieID) VALUES
(21, 12000000, 60000000, 21), -- KGF
(22, 72000000, 155000000, 22), -- RRR
(23, 9000000, 300000000, 23), -- Dangal
(24, 28000000, 250000000, 24), -- Baahubali
(25, 7000000, 70000000, 25), -- 3 Idiots
(26, 12000000, 140000000, 26), -- PK
(27, 8000000, 45000000, 27), -- Drishyam
(28, 3000000, 20000000, 28), -- Sholay
(29, 18000000, 122000000, 29), -- Pushpa
(30, 9000000, 66000000, 30); -- Lagaan

-- Insert ratings and durations for Indian movies into MovieRatingsDuration
INSERT INTO MovieRatingsDuration (RatingID, DurationMin, Rating, Language, Country, MovieID) VALUES
(21, 156, 8.4, 'Kannada', 'India', 21), -- KGF
(22, 187, 8.0, 'Telugu', 'India', 22), -- RRR
(23, 161, 8.3, 'Hindi', 'India', 23), -- Dangal
(24, 159, 8.1, 'Telugu', 'India', 24), -- Baahubali
(25, 170, 8.4, 'Hindi', 'India', 25), -- 3 Idiots
(26, 153, 8.1, 'Hindi', 'India', 26), -- PK
(27, 163, 8.2, 'Hindi', 'India', 27), -- Drishyam
(28, 204, 8.1, 'Hindi', 'India', 28), -- Sholay
(29, 179, 7.6, 'Telugu', 'India', 29), -- Pushpa
(30, 224, 8.1, 'Hindi', 'India', 30); -- Lagaan

-- 1. Retrieve the first five distinct movies along with their title from the MovieDetails table.
	SELECT 
		TOP 5  MOVIEID,TITLE
	FROM
		MovieDetails;

-- 2. Display the total of the BudgetUSD and BoxOfficeUSD, assign the name TotalUSD from the MovieFinancials table.
	--EASY ONE
-- 3. Insert a new row with this data (11, 'The Incredible Hulk', 'Action', 'Louis Leterrier', 2008) into the MovieDetails table.
INSERT INTO MovieDetails
VALUES 
	(11, 'The Incredible Hulk', 'Action', 'Louis Leterrier', 2008);
-- 4. Set the value of the genre to ‘Action’ for the movie 'Avengers: Endgame' in the MovieDetails table.
UPDATE MovieDetails
SET Genre='ACTION'
WHERE
	TITLE='Avengers: Endgame';
-- 5. Delete the records with a duration of 181 minutes from the MovieRatingsDuration table.
DELETE MovieRatingsDuration
WHERE
	DurationMin=181;

-- 6. Add a new column ‘Producer’ to the MovieDetails table.
ALTER TABLE 
	MovieDetails
ADD  
	Producer VARCHAR(20);

-- 7. Delete all records from the MovieFinancials table without removing its table structure.
TRUNCATE TABLE MovieFinancials;

-- 8. Retrieve all movies from the MovieDetails table with titles starting with ‘The’.
--EASY ONE
-- 9. Retrieve the names of directors that include ‘son’ from the MovieDetails table.
--EASY ONE
-- 10. Convert and display the title of all movies in uppercase.
SELECT UPPER(TITLE) FROM MovieDetails;

-- 11. Display the highest rating from the MovieRatingsDuration table.
SELECT 
	*
FROM
	MovieRatingsDuration
WHERE
	Rating= (SELECT MAX(RATING) FROM MovieRatingsDuration);

-- 12. Calculate the number of years between the current year and the movie's release year.
SELECT 
	DATEDIFF(YEAR, CAST(CONCAT(RELEASEYEAR, '-01-01') AS DATE), GETDATE()) 
FROM
	MovieDetails;

-- 13. Find the languages in which movies have an average rating greater than 8.0 and display the language and the average rating.
--EASY ONE
SELECT 
	LANGUAGE ,MAX(DurationMin),MIN(DurationMin),AVG(DurationMin)
FROM
	MovieRatingsDuration
GROUP BY
	LANGUAGE
HAVING
	AVG(RATING)>7.5;

-- 14. Retrieve the minimum, maximum, and average movie duration for each language in the 
-- MovieRatingsDuration table, but display only those languages where the average rating is greater than 7.5.
----EASY ONE
-- 15. Find the titles of movies whose budget is higher than the average budget of all movies. (Do not use JOINS)
---EASY ONE
-- 16. Find the titles of movies that have a box office revenue greater than the average box office revenue of all movies.
	SELECT 
		TITLE
	FROM
		MovieDetails
	INNER JOIN
		MovieFinancials
	ON
		MovieFinancials.MovieID=MovieDetails.MovieID
	WHERE
		BoxOfficeUSD> (SELECT AVG(BoxOfficeUSD) FROM MovieFinancials);
-- 17. Create a view with Rating, Language, and Country columns with no data and name it MovieReview.
CREATE VIEW MovieReview
AS
SELECT 
	*
FROM
	MovieDetails

-- 18. List all movies that have the same director but different genres, displaying the director’s name, 
-- both movie titles, and their respective genres.

SELECT 
	*
FROM 
	MovieDetails
WHERE
	Director
IN
	(
	SELECT
		DIRECTOR 
	FROM
		MovieDetails
	GROUP BY
		DIRECTOR
	HAVING 
		COUNT(MOVIEID)>1
	);


-- 19. Retrieve the title, director, and box office earnings for all movies that were released after 2010, 
-- along with their ratings.
--EASY ONE

-- 20. List all directors and the number of movies they have directed, but only include directors who have directed more than 1 movie.
SELECT 
	 DIRECTOR,COUNT(MOVIEID)
FROM
	MovieDetails
GROUP BY
	Director
HAVING
	COUNT(MOVIEID)>1;
