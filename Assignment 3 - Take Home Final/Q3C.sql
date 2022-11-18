-- Q3C

SELECT ClubName, COUNT(DISTINCT GameID) AS NumberOfGames
FROM player AS p
INNER JOIN clubplayer AS cp ON p.PlayerID = cp.PlayerID
INNER JOIN club AS c ON cp.ClubID = c.ClubID
INNER JOIN playerteam AS pt ON p.PlayerID = pt.PlayerID 
WHERE FirstName = 'Elizabeth' AND LastName = 'Blackburn'
GROUP BY ClubName
ORDER BY NumberOfGames DESC;