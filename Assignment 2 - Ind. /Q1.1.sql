-- Q1.1 LIST 'team names & points' of ANY team, ANY game, ANY season; condition: points > 50


SELECT TeamName, Team1Score AS Points
	   FROM game
	   INNER JOIN team ON Team1 = TeamID
	   WHERE Team1Score > 50
UNION ALL
SELECT TeamName, Team2Score AS Points
	   FROM game
	   INNER JOIN team ON Team2 = TeamID
	   WHERE Team2Score > 50;
       
       
 -- test       
SELECT *
FROM game
INNER JOIN team AS team1 ON Team1 = team1.TeamID
INNER JOIN team AS team2 ON Team2 = team2.TeamID
WHERE Team1Score > 50 OR Team2Score > 50;

SELECT team1.TeamName, Team1Score, team2.TeamName, Team2Score
FROM game
INNER JOIN team AS team1 ON Team1 = team1.TeamID
INNER JOIN team AS team2 ON Team2 = team2.TeamID
WHERE Team1Score > 50 OR Team2Score > 50;

SELECT TeamName, Team1Score
FROM game
INNER JOIN team ON Team1 = TeamID
WHERE Team1Score > 50;
       
SELECT TeamName, Team2Score
FROM game
INNER JOIN team ON Team2 = TeamID
WHERE Team2Score > 50;


