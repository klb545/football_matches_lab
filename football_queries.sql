
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
SELECT DISTINCT code
FROM divisions
WHERE name = 'Eredivisie';

SELECT COUNT(id)
FROM matches
WHERE division_code = 'N1' AND (season BETWEEN 2010 AND 2015) AND (ftr = 'D');
