-- Q2.6 List the 'team name' and 'game date' 
-- when a 'Mixed' Touch rugby team fielded 'more than four women' for their game. 
-- Order the result by the 'most recent to oldest' date. 

SELECT TeamID, GameID, TeamName, GameDate
FROM playerteam NATURAL JOIN team NATURAL JOIN player NATURAL JOIN game
WHERE TeamType = 'Mixed' AND Sex = 'F'
GROUP BY TeamID, GameID
HAVING COUNT(PlayerID) > 4
ORDER BY GameDate DESC;