-- Q2.2 Name ANY 'player', and 'their club' who 'has never played a game in any season in any competition'. 


SELECT CONCAT(FirstName, ' ', LastName) AS PlayerName, ClubName
FROM player NATURAL JOIN clubplayer NATURAL JOIN club
WHERE PlayerID NOT IN
	(SELECT PlayerID
	 FROM playerteam);
     
     
-- test
SELECT *
FROM player NATURAL JOIN clubplayer NATURAL JOIN club;

SELECT *
FROM player LEFT OUTER JOIN playerteam ON player.playerID = playerteam.playerID;

SELECT *
FROM player LEFT OUTER JOIN playerteam ON player.playerID = playerteam.playerID
WHERE gameID IS NULL;


     


     