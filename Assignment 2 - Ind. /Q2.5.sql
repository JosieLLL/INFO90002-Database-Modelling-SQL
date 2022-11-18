-- Q2.5 List 'all players' who have played for 'two or more different clubs'. 
-- List the 'player's name', the 'club name' and 'month' and 'years' they 'started and finished' playing with 'each club'. 
-- Order the result by 'Player', then 'oldest start date'. 

SELECT CONCAT(FirstName, ' ', LastName) AS PlayerName,
	   ClubName, 
	   DATE_FORMAT(FromDate, '%M %Y') AS StartDate, 
	   DATE_FORMAT(ToDate, '%M %Y') AS FinishDate
FROM player NATURAL JOIN clubplayer NATURAL JOIN club
WHERE PlayerID IN
	(SELECT PlayerID
	 FROM clubplayer
	 GROUP BY PlayerID
	 HAVING COUNT(DISTINCT ClubID) >= 2)
ORDER BY PlayerName, FromDate;
