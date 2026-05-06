-- for matches table--
CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    date DATE,
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    winner VARCHAR(50),
    venue VARCHAR(100)
);
-- for deliveries table--
CREATE TABLE deliveries (
    match_id INT,
    inning INT,
    batsman VARCHAR(50),
    bowler VARCHAR(50),
    runs INT,
    ball INT
);

SELECT winner, COUNT(*) AS wins
FROM matches
GROUP BY winner
ORDER BY wins DESC;

-- top 10 run scorers--
SELECT batsman, SUM(total_runs) AS runs
FROM deliveries
GROUP BY batsman
ORDER BY runs DESC
LIMIT 10;
-- top wicket takers -- 
SELECT bowler, COUNT(player_dismissed) AS wickets
FROM deliveries
WHERE player_dismissed IS NOT NULL
GROUP BY bowler
ORDER BY wickets DESC
LIMIT 10;
-- toss impact analysis --
SELECT toss_winner,
    COUNT(*) AS matches,
    SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS wins
FROM matches
GROUP BY toss_winner;
CREATE DATABASE `ipl_project1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE DATABASE `ipl_project1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE matches (
    id INT primary key,
    city VARCHAR(50),
    date DATE,
    team1 VARCHAR(50),
    team2 VARCHAR(50),
    toss_winner VARCHAR(50),
    toss_decision VARCHAR(10),
    winner VARCHAR(50)
);
-- best strike rate --
SELECT 
    batsman,
    SUM(total_runs) AS runs,
    COUNT(*) AS balls,
    (SUM(total_runs) / COUNT(*)) * 100 AS strike_rate
FROM deliveries
GROUP BY batsman
HAVING balls > 500
ORDER BY strike_rate DESC;
-- orange cap --
SELECT batsman, SUM(total_runs) AS runs
FROM deliveries
GROUP BY batsman
ORDER BY runs DESC
LIMIT 1;


SELECT m.match_id, m.winner, d.batsman, SUM(d.total_runs) AS total_runs
FROM matches m
JOIN deliveries d
ON m.match_id = d.match_id
GROUP BY m.match_id, m.winner, d.batsman;

-- death over performance --

SELECT batsman, SUM(total_runs) AS runs
FROM deliveries
WHERE `over` >= 16
GROUP BY batsman
ORDER BY runs DESC;



-- most sixes --
SELECT batsman, COUNT(*) AS sixes
FROM deliveries
WHERE total_runs = 6
GROUP BY batsman
ORDER BY sixes DESC;


 create database project_db;
