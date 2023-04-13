
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
SELECT code FROM divisions WHERE name = 'BundesLiga';



