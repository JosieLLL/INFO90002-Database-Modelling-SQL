-- Q1.2 LIST the 'club name' that 'Robert Menzies' plays for


SELECT ClubName
FROM player NATURAL JOIN clubplayer NATURAL JOIN club
WHERE FirstName = 'Robert' AND LastName = 'Menzies';


-- test
SELECT *
FROM player NATURAL JOIN clubplayer NATURAL JOIN club;

SELECT *
FROM player NATURAL JOIN clubplayer NATURAL JOIN club
WHERE FirstName = 'Robert' AND LastName = 'Menzies';


