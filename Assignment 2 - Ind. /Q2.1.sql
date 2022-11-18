-- Q2.1 For each letter of the alphabet, print how many player's 'last name' begins with that letter. 
-- (You can skip letters with a count of zero.) 


SELECT LEFT(LastName, 1) AS BeginningLetter, 
	   COUNT(LEFT(LastName, 1)) AS CountNum
FROM player
GROUP BY BeginningLetter
ORDER BY BeginningLetter;

-- test
SELECT *
FROM player;

SELECT LEFT(LastName, 1) 
FROM player
ORDER BY LEFT(LastName, 1);