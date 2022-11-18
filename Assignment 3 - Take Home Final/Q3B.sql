-- Q3B

SELECT SeasonYear, TeamName, 
       SUM(CASE WHEN Team1 = TeamID THEN Team1Score ELSE Team2Score END) AS Points
FROM game
INNER JOIN team ON Team1 = TeamID OR Team2 = TeamID
INNER JOIN club AS c ON c.ClubID = team.ClubID
INNER JOIN season AS s ON s.SeasonID = game.SeasonID
INNER JOIN competition AS comp ON comp.CompetitionID = s.CompetitionID
WHERE ClubName = 'Melbourne University Rugby Club'
AND CompetitionName = 'Dewar Shield'
GROUP BY SeasonYear, TeamName
ORDER BY Points DESC;