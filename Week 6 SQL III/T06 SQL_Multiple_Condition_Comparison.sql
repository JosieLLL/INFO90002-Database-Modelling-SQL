SELECT *
FROM department 
WHERE Name like 'M%' 
AND ManagerID = 1;

SELECT *
FROM department 
WHERE Name like 'M%' 
OR ManagerID = 1;
