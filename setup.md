# Task - Football Matches

In this task you will practice writing SQL queries to extract information from a database. In this example we have provided an SQL file which will add details of some football matches played in various countries over the past few years, plus the divisions they were played in. There are two tables:

- **Divisions** lists the reference code for each division, its name and the country it is played in.
- **Matches** lists the division code, home and away team names, home and away goals, result (**H**ome or **A**way win, or **D**raw) and the season in which the match was played.

The database contains only league matches. In league football every team plays every other team both home and away, meaning there will be at least two entries per season for each combination of teams in the league. For example, The matches between Arsenal and Tottenham in 2021 are listed as:

| id   | division_code | hometeam  | awayteam  | fthg | ftag | ftr | season |
|------|---------------|-----------|-----------|------|------|-----|--------|
| 1023 | E0            | Tottenham | Arsenal   | 2    | 0    | H   | 2021   |
| 1202 | E0            | Arsenal   | Tottenham | 2    | 1    | H   | 2021   |

In order to determine if a team has played in a given division in a given season it is only necessary to query **either** `hometeam` or `awayteam`. Similarly, to check if two teams have played each other it is only necessary to query for one of the `hometeam`/`awayteam` permutations.

## Setup

While we could get some practice with `INSERT` queries by adding all the matches individually, it just won't be practical - there are over 120000 of them! Instead we'll use the PostgreSQL command line tools to set up the database.

Open a terminal and make sure you have them installed. If the following command throws an error get in touch with a trainer who can talk you through installing them.

```sh
which psql

# will print path/to/your/installation
```

With the CLI installed we can carry out some common functions without opening any database inspection tools. For example, we have a shortcut to create a database:

```sh
createdb football
```

We can then use the CLI to run an SQL file and target a specific database with it. Navigate to the folder with the `football_data.sql` file in it and run the command:

```sh
psql -d football -f football_data.sql
```

This will execute the code in `football_data.sql` with any tables being created in the `football` database. If everything has worked you should now be able to query the database and see all the data there.

> The general form of the command is `psql -d yourdbname -f path/to/file.sql`