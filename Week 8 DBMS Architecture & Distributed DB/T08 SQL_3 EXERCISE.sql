-- TASK1 list the id and name of all green items of type C

-- TASK2 find the items delivered by at least two suppliers
SELECT item.Name
FROM item NATURAL JOIN deliveryitem NATURAL JOIN delivery
GROUP BY item.Name
HAVING COUNT(DISTINCT supplierid) >= 2;

-- TASK3 Find the name of the highest-paid employee in the Marketing department
SELECT FirstName, LastName, Salary
FROM employee
WHERE Salary IN
	(SELECT MAX(employee.Salary)
	 FROM employee NATURAL JOIN department
	 WHERE department.name = 'Marketing');

-- TASK4 Find the supplierid and supplier names that do not deliver compasses
SELECT supplierid, name
FROM supplier
WHERE supplierid NOT IN
	(SELECT DISTINCT supplierid
     FROM delivery NATURAL JOIN deliveryitem NATURAL JOIN item
	 WHERE name LIKE 'compass%');

-- TASK5 Find, for each department that has sold items of type E. List the department name and the average salary of the employees 

-- TASK6 Find the total number of items(list the item and sale quantity) of type E sold by the departments on the second floor

-- TASK7 Type the query to find the total quantity sold of each item by the departments on the second floor

-- TASK8 Find the items that are not sold by departments on the second floor but are sold on other floors within the store

-- TASK9 Find the numbers and names of the employees who earn more than their employee

-- TASK10

-- TASK11



