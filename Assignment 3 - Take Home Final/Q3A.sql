-- Q3A

SELECT GameDate, TeamName, FirstName, LastName
FROM game 
INNER JOIN playerteam AS pt ON pt.GameID = game.GameID
INNER JOIN player AS p ON p.PlayerID = pt.PlayerID
INNER JOIN team ON pt.TeamID = team.TeamID
WHERE (Team1Score IS NULL OR Team2Score IS NULL) 
AND YEAR(GameDate) = 2018;



