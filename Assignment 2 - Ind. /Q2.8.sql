-- Q2.8 Name 'any player' who played in '2016' and '2018' but did 'not play in 2017'.

SELECT PlayerID, CONCAT(FirstName, ' ', LastName) AS FullName
FROM player
WHERE PlayerID IN 
	(SELECT PlayerID
	 FROM playerteam NATURAL JOIN game
	 WHERE YEAR(GameDate) IN (2016, 2018))
--      GROUP BY PlayerID)
AND PlayerID NOT IN
	(SELECT PlayerID
	 FROM playerteam NATURAL JOIN game
	 WHERE YEAR(GameDate) IN (2017))
GROUP BY PlayerID;


-- test
SELECT *
FROM (SELECT PlayerID, COUNT(DISTINCT YEAR(GameDate)) AS NumYear
	  FROM playerteam NATURAL JOIN game
	  WHERE YEAR(GameDate) IN (2016, 2018)
	  GROUP BY PlayerID) AS Player2016and2018
LEFT JOIN
	 (SELECT PlayerID, COUNT(DISTINCT YEAR(GameDate)) AS NumYear
	  FROM playerteam NATURAL JOIN game
	  WHERE YEAR(GameDate) IN (2017) 
	  GROUP BY PlayerID) AS Player2017
USING (PlayerID)
-- WHERE Player2017.NumYear IS NULL;
