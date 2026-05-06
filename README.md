# IPL Data Analysis (SQL)

## Tools Used
- MySQL Workbench
- SQL

## Project Description
Analyzed IPL dataset using SQL to extract insights about players and teams.

## Key Analysis
- Top run scorers
- Match winners
- Team performance

## Sample Query
SELECT batsman, SUM(runs)
FROM deliveries
GROUP BY batsman;
