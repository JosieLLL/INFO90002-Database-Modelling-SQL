-- Q2.4 LIST the 'full name', 'game count' for 'all players' who 'have played more than 50 games' for the 'same club'. 

SELECT *
FROM player NATURAL JOIN playerteam NATURAL JOIN clubplayer NATURAL JOIN club;

-- Final Version
SELECT PlayerID, ClubID,
	   CONCAT(FirstName, ' ', LastName) AS FullName, 
	   COUNT(GameID) AS GameCount,
	   ClubName
FROM player NATURAL JOIN playerteam NATURAL JOIN clubplayer NATURAL JOIN club
GROUP BY PlayerID, ClubID
HAVING GameCount > 50;


