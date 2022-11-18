SELECT AVG(Salary) AS avg_sal
FROM employee;

-- KEEP ROUNDED NUMBER AS NUMBER
SELECT ROUND(AVG(Salary),2) AS avg_sal
FROM employee;

-- CONVERT ROUNDED NUMBER TO STRING
SELECT FORMAT(AVG(Salary),2) AS avg_sal 
FROM employee;

SELECT *
FROM department;

SELECT *
FROM employee;

SELECT department.Name, employee.FirstName, employee.LastName -- name, firstname, lastname works as well due to they are unqiue in both tables
FROM department NATURAL JOIN employee;

SELECT Name, FirstName, LastName
FROM department
INNER JOIN employee
ON department.departmentID = employee.departmentID;

-- TASK 1
SELECT Name, FirstName, LastName
FROM department
NATURAL JOIN employee
ORDER BY Name;

SELECT Name AS DepartmentName, 
CONCAT (FirstName, " ", LastName) AS EmployeeName
FROM department NATURAL JOIN employee
ORDER BY DepartmentName;

-- USING CONCAT
SELECT Name AS DepartmentName, 
CONCAT (FirstName, " ", LastName) AS EmployeeName
FROM department 
INNER JOIN employee
ON Department.departmentID = Employee.departmentID
ORDER BY DepartmentName;

-- TASK 2
-- USING WHERE TO FILTER
SELECT Name AS DepartmentName, 
CONCAT (FirstName, " ", LastName) AS EmployeeName
FROM department 
INNER JOIN employee
ON Department.departmentID = Employee.departmentID
WHERE name = 'Management';

-- TASK 3
SELECT *
FROM supplier;

SELECT *
FROM delivery;

-- The part of GROUP BY should be the base column of aggregation, shown first in the SELECT
SELECT supplierID, Name, COUNT(deliveryID) AS Deliveries
FROM supplier NATURAL JOIN delivery
GROUP BY supplierID, Name
ORDER BY Name;


-- TASK 4
SELECT COUNT(employeeID)
FROM employee
WHERE departmentID IN -- NATURAL JOIN SHARE THE COLUMNS WITH SAME NAME
	(SELECT departmentID
	 FROM department
     WHERE floor = 5);

-- TASK 5
SELECT *
FROM item;

SELECT *
FROM sale;

SELECT *
FROM saleitem;

SELECT Name, SaleDate, Quantity
FROM sale NATURAL JOIN saleitem NATURAL JOIN item
WHERE Name LIKE 'Tent%';


-- TASK 6
SELECT Name, COUNT(employeeID)
FROM department NATURAL JOIN employee
GROUP BY Name
HAVING COUNT(employeeID) > 2;


-- TASK 7
SELECT itemid
FROM saleitem NATURAL JOIN sale NATURAL JOIN department
WHERE floor = 2 
GROUP BY itemid
HAVING COUNT(DISTINCT departmentID) >= 2; -- COUNT the unique departmentID here, Otherwise 5 No.1 would be COUNT as 5 instead of 1

-- Neven's version
SELECT itemid
FROM sale 
INNER JOIN saleitem ON sale.SaleID = saleitem.SaleID
INNER JOIN department ON sale.departmentID = department.departmentID
WHERE floor = 2 
GROUP BY itemid
HAVING COUNT(DISTINCT department.departmentID) >= 2; -- sals.departmentID is the same


-- TASK 8
SELECT departmentid, AVG(salary)
FROM department NATURAL JOIN employee
GROUP BY departmentid
HAVING AVG(salary)> 55000;

-- TASK 9 (deliveryItem, Item, Delivery -- hint is wrong)
SELECT itemID, Name
FROM deliveryitem
NATURAL JOIN item
NATURAL JOIN delivery
GROUP BY itemID, Name
HAVING COUNT(DISTINCT supplierID) = 1
ORDER BY Name;


-- TASK 10
SELECT supplierID, Name
FROM delivery
NATURAL JOIN deliveryitem
NATURAL JOIN supplier
GROUP BY supplierID, Name
HAVING COUNT(DISTINCT itemid) >= 10;


-- TASK 11
SELECT DISTINCT item.itemID, item.Name, Type, department.departmentID, Floor
FROM item
INNER JOIN saleitem ON item.itemID = saleitem.itemID
INNER JOIN sale ON saleitem.SaleID = sale.SaleID
INNER JOIN department ON sale.departmentID = department.departmentID
ORDER BY item.Name;






