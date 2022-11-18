SELECT *
FROM game
WHERE YEAR(GameDate) = 2017 AND SeasonID = 19;



	  SELECT TeamID, TeamName, SUM(Team1Score) AS AgainstTotals
	  FROM game INNER JOIN team ON Team1 = TeamID
	  WHERE YEAR(GameDate) = 2017 AND TeamType = 'Mixed'
	  GROUP BY TeamID, TeamName;
      
	  SELECT TeamID, TeamName, SUM(Team2Score) AS ForTotals
	  FROM game INNER JOIN team ON Team2 = TeamID
	  WHERE YEAR(GameDate) = 2017 AND TeamType = 'Mixed'
	  GROUP BY TeamID, TeamName;
      
      
      
SELECT Team2,Team2Score,TeamID
	 FROM game INNER JOIN team ON Team2 = TeamID
	 WHERE YEAR(GameDate) = 2017 AND TeamType = 'Mixed'