-- Q2.7 Has any 'male' player played in the 'Mens, Senior Mens, and Mixed' teams for the 'same club'? 
-- List the 'full name' of the player and the 'club'.


-- field a side: one club
SELECT PlayerID, ClubID, 
	   CONCAT(FirstName, ' ', LastName) AS FullName,
       ClubName
FROM playerteam NATURAL JOIN player NATURAL JOIN team NATURAL JOIN club -- NATURAL JOIN clubplayer 
WHERE Sex = 'M' AND TeamType NOT IN ('Womens')
GROUP BY PlayerID, ClubID
HAVING COUNT(DISTINCT TeamID) = 3;


-- test for one
-- SELECT PlayerID, ClubID, COUNT(DISTINCT TeamID)
-- FROM playerteam NATURAL JOIN team
-- WHERE TeamType != 'Womens'
-- GROUP BY PlayerID, ClubID
-- HAVING COUNT(DISTINCT TeamID) = 3;

-- SELECT PlayerID, ClubID, COUNT(DISTINCT TeamID)
-- FROM playerteam NATURAL JOIN team
-- WHERE PlayerID = 10018
-- GROUP BY PlayerID, ClubID;

-- just stay in the same club: two clubs
SELECT PlayerID, ClubID, 
	   CONCAT(FirstName, ' ', LastName) AS FullName,
       ClubName
FROM player NATURAL JOIN clubplayer NATURAL JOIN club NATURAL JOIN team 
WHERE Sex = 'M' AND TeamType NOT IN ('Womens')
GROUP BY PlayerID, ClubID
HAVING COUNT(TeamID) = 3;



	
