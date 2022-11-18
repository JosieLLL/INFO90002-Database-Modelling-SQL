-- Q3D

SELECT (CASE WHEN game.Team1 = t1.TeamID THEN t1.TeamName END) AS Team1,
	   Team1Score,
  	   (CASE WHEN game.Team2 = t2.TeamID THEN t2.TeamName END) AS Team2,
       Team2Score
FROM game
INNER JOIN team AS t1 ON game.Team1 = t1.TeamID
INNER JOIN team AS t2 ON game.Team2 = t2.TeamID
WHERE GameDate = '2015-10-04' 
AND StartTime = '10:00:00';