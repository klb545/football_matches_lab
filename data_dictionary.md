# Football Data Lab - Data Dictionary 

## Divisions

| Column Name | Description                     | Data Type    | Permitted Values                  |
|-------------|---------------------------------|--------------|-----------------------------------|
| id          | Unique identifier               | SERIAL       | numbers >= 1                      |
| code        | Reference code for the division | VARCHAR(255) | Valid division code               |
| name        | Division name                   | VARCHAR(255) | Valid division name               |
| country     | Country the league is played in | VARCHAR(255) | Valid country name                |   

## Matches

| Column Name   | Description                                             | Data Type    | Permitted Values             |
|---------------|---------------------------------------------------------|--------------|------------------------------|
| id            | Unique identifier                                       | SERIAL       | numbers >= 1                 |
| division_code | Reference code of the division the match was played in  | VARCHAR(255) | Values from `divisions.code` |
| hometeam      | Name of the home team in the match                      | VARCHAR(255) |                              |
| awayteam      | Name of the away team in the match                      | VARCHAR(255) |                              |
| fthg          | Goals scored by the home team at full-time in the match | INT          | 0 <= value <= 10             |
| ftag          | Goals scored by the away team at full time in the match | INT          | 0 <= value <= 13             |
| ftr           | Full time result: (H)ome win; (D)raw; (A)way win        | VARCHAR(255) | H, D, A                      |
| season        | Season in which the match was played                    | INT          | 2006 <= value <= 2021        |
