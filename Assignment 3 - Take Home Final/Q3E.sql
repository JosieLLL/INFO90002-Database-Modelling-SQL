-- Q3E

SELECT TeamName
FROM team NATURAL JOIN club
WHERE ClubName = 'Geelong Rugby Club';

SELECT TeamName
FROM team
WHERE ClubID IN
	  (SELECT ClubID
	   FROM club
       WHERE ClubName = 'Geelong Rugby Club');