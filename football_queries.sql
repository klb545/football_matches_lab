-- Each of the questions/tasks below can be answered using a `SELECT` query.
-- When you find a solution copy it into the code block under the question before pushing your solution to GitHub.

-- 1) Find all the matches from 2017.
SELECT *
FROM matches
WHERE season = 2017;

-- 2) Find all the matches featuring Barcelona.
SELECT *
FROM matches
WHERE hometeam = 'Barcelona'
OR awayteam = 'Barcelona';


-- 3) What are the names of the Scottish divisions included?
--      answer:  Scottish Championship, Scottish League One, & Scottish Premiership
SELECT DISTINCT name
FROM divisions
WHERE country = 'Scotland';


-- 4) Find the value of the `code` for the `Bundesliga` division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables
--      answer: 544
SELECT DISTINCT code
FROM divisions
WHERE name LIKE '%Bundesliga%';

SELECT COUNT(id)
FROM matches
WHERE (division_code = 'D1' OR division_code = 'D2')
AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg');


-- 5) Find the teams which include the word "City" in their name. 
--      answer: Bath City, Man City, Edinburgh City, & Bristol City
SELECT DISTINCT hometeam
FROM matches
WHERE (LOWER(hometeam) LIKE LOWER('%City%'))
OR (LOWER(hometeam) LIKE LOWER('%City%'));


-- 6) How many different teams have played in matches recorded in a French division?
--      answer: 61
SELECT DISTINCT code
FROM divisions
WHERE country = 'France'; -- found to have division codes of 'F1' & 'F2'

SELECT COUNT(DISTINCT hometeam)
FROM matches
WHERE division_code = 'F1'
OR division_code = 'F2';


-- 7) Have Huddersfield played Swansea in any of the recorded matches?
--      answer: yes, 12
SELECT COUNT(id)
FROM matches
WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea')
OR (hometeam = 'Swansea' AND awayteam = 'Huddersfield');


-- 8) How many draws were there in the `Eredivisie` between 2010 and 2015?
--      answer: 431
SELECT DISTINCT code
FROM divisions
WHERE name = 'Eredivisie'; -- found to have a division code of 'N1'

SELECT COUNT(id)
FROM matches
WHERE division_code = 'N1'
AND (season BETWEEN 2010 AND 2015)
AND (ftr = 'D');


-- 9) Select the matches played in the Premier League in order of total goals scored from highest to lowest. When two matches have the same total the match with more home goals should come first.
SELECT DISTINCT code
FROM divisions
WHERE name = 'Premier League'; -- found to have a division code of 'E0'

SELECT *
FROM matches
WHERE division_code = 'E0'
ORDER BY ((fthg + ftag), fthg) DESC;


-- 10) In which division and which season were the most goals scored?

--      DIVSION | answer: EFL Championship
SELECT division_code, SUM(fthg) AS MostGoalsScored
FROM matches
GROUP BY division_code
ORDER BY SUM(fthg) DESC
LIMIT 1;

SELECT DISTINCT name
FROM divisions
WHERE code = 'E1';

--      SEASON | answer: 2012
SELECT season, SUM(fthg) AS MostGoalsScored
FROM matches
GROUP BY season
ORDER BY SUM(fthg) DESC
LIMIT 1;

--      DIVISION & SEASON | answer: National League
SELECT division_code, season, SUM(fthg) AS MostGoalsScored
FROM matches
GROUP BY division_code, season
ORDER BY SUM(fthg) DESC
LIMIT 1;

SELECT DISTINCT name
FROM divisions
WHERE code = 'EC';
