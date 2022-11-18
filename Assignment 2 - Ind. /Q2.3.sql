-- Q2.3 Count the 'number of walkovers' in 'each year'. Order your result in 'chronological' order.

SELECT YEAR(GameDate) AS SeasonYear,
	   SUM(CASE WHEN Team1Score IS NULL OR Team2Score IS NULL THEN 1
           ELSE 0
           END) AS NumOfWalkover
FROM game
GROUP BY SeasonYear
ORDER BY SeasonYear;

