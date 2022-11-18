-- Q2.9 List the 'for' and 'against' 'totals' for 'all teams' in the '2017' 'Mixed' Rugby division. 
-- For is the sum of all points a team score. 
-- Against is the sum of all points scored against that team. 
-- Order the result by the 'highest' derived 'percentage' (for / against as a percentage). 

SELECT TeamID, TeamName,
       SUM(CASE WHEN TeamID = Team1 THEN Team1Score ELSE Team2Score END) AS ForTotal,
	   SUM(CASE WHEN TeamID = Team2 THEN Team1Score ELSE Team2Score END) AS AgainstTotal,
	   CONCAT( ROUND( SUM(CASE WHEN TeamID = Team1 THEN Team1Score ELSE Team2Score END) / SUM(CASE WHEN TeamID = Team2 THEN Team1Score ELSE Team2Score END) * 100, 2), '%') AS Percentage
FROM game INNER JOIN team ON TeamID = Team1 OR TeamID = Team2
WHERE YEAR(GameDate) = 2017 AND TeamType = 'Mixed'
GROUP BY TeamID
ORDER BY ForTotal / AgainstTotal DESC;



-- test
SELECT
*,
-- TeamID, TeamName,
-- SUM(CASE WHEN TeamID = Team1 THEN Team1Score ELSE Team2Score END) AS ForTotal,
-- SUM(CASE WHEN TeamID = Team2 THEN Team1Score ELSE Team2Score END) AS AgainstTotal,
CASE WHEN TeamID = Team1 THEN Team1Score ELSE Team2Score END AS 'for',
CASE WHEN TeamID = Team2 THEN Team1Score ELSE Team2Score END AS 'against'
-- CONCAT( ROUND( SUM(CASE WHEN TeamID = Team1 THEN Team1Score ELSE Team2Score END) / SUM(CASE WHEN TeamID = Team2 THEN Team1Score ELSE Team2Score END) * 100, 2), '%') AS Percentage
FROM game INNER JOIN team ON TeamID = Team1 OR TeamID = Team2
WHERE YEAR(GameDate) = 2017 AND TeamType = 'Mixed'
;
-- GROUP BY TeamID
-- ORDER BY ForTotal / AgainstTotal DESC;