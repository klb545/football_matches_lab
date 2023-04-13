
-- CREATE TABLE football ( -- note: uppercase is convention but not standard
--     id SERIAL, -- i.e. going to be a unique interger.... .... will automatically generate the values in the columns
--     title VARCHAR(255), -- so far, we've got an id field and title field ... note: varchar is a string and 255 is the number of characters - the memory allocated
--     duration INT,
--     rating VARCHAR(10)
-- );

-- SELECT * FROM matches WHERE season = 2017;
-- SELECT * FROM matches WHERE hometeam = 'Barcelona' OR awayteam = 'Barcelona';

-- names of scottish divisions included
-- SELECT name FROM divisions WHERE country = 'Scotland';


-- Find the value of the `code` for the `Bundesliga` division.
-- Use that code to find out how many matches Freiburg have played in that division.
-- HINT: You will need to query both tables
-- SELECT code FROM divisions WHERE name = 'Bundesliga';
-- SELECT COUNT(hometeam = 'Freiburg') FROM matches WHERE division_code = 'D1';



-- SELECT DISTINCT hometeam FROM matches WHERE (LOWER(hometeam) LIKE LOWER('%City%')) OR (LOWER(hometeam) LIKE LOWER('%City%'));



-- How many different teams have played in matches recorded in a French division?

-- SELECT DISTINCT code FROM divisions WHERE country = 'France';
-- SELECT COUNT(DISTINCT hometeam) FROM matches WHERE division_code = 'F1' OR division_code = 'F2';

-- Have Huddersfield played Swansea in any of the recorded matches?
-- SELECT COUNT(id) FROM matches WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea') OR (hometeam = 'Swansea' AND awayteam = 'Huddersfield');


-- How many draws were there in the `Eredivisie` between 2010 and 2015?
-- SELECT DISTINCT code
-- FROM divisions
-- WHERE name = 'Eredivisie';

-- SELECT COUNT(id)
-- FROM matches
-- WHERE division_code = 'N1'
-- AND (season BETWEEN 2010 AND 2015)
-- AND (ftr = 'D');




-- Select the matches played in the Premier League
-- in order of total goals scored from highest to lowest.
-- When two matches have the same total the match with more home goals should come first.


-- SELECT DISTINCT code FROM divisions WHERE name = 'Premier League';
-- SELECT * FROM matches WHERE division_code = 'E0' ORDER BY ((fthg + ftag), fthg) DESC;



-- In which division and which season were the most goals scored?
-- division with most goals scored
-- SELECT DISTINCT division_code, SUM(division_code.fthg) FROM matches GROUP BY division_code;
-- SELECT SUM(fthg) AS MostGoalsScored FROM matches GROUP BY division_code;
-- SELECT SUM(fthg) FROM matches WHERE division_code = 'E0';
-- SELECT MAX(COUNT(id)*SUM(fthg)) AS MostGoalsScored FROM matches;
-- SELECT division_code FROM matches WHERE MostGoalsScored = 13;
-- season with most goals scoredd
-- SELECT division_code FROM matches WHERE 

-- I've pasted in your code and I'm getting two D1s... I think you can fix that by doing
-- `SELECT DISTINCT code
-- FROM divisions
-- WHERE name = 'Bundesliga';` 




-- 4) Find the value of the `code` for the `Bundesliga` division.
-- Use that code to find out how many matches Freiburg have played in that division.
-- HINT: You will need to query both tables

SELECT DISTINCT code
FROM divisions
WHERE name LIKE '%Bundesliga%';

SELECT COUNT(id)
FROM matches
WHERE (division_code = 'D1' OR division_code = 'D2')
AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg');













