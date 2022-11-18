DESC Department;
DESC Employee;

SELECT * 
FROM employee;

SELECT firstname, lastname, departmentid 
FROM employee;

SELECT firstname, lastname, departmentid 
FROM employee
WHERE Salary < 55000;

SELECT firstname, lastname, departmentid, salary
FROM employee
WHERE departmentid = 11
AND salary > 55000;

SELECT firstname, lastname, departmentid, salary
FROM employee
WHERE salary >= 45000;

SELECT *
FROM employee
ORDER BY departmentid AND lastname;

SELECT firstname, lastname, salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

SELECT COUNT(*)
FROM employee;

SELECT departmentid, COUNT(employeeid) 
FROM employee
GROUP BY departmentid;

SELECT departmentid, AVG(salary)
FROM employee
GROUP BY departmentid;

SELECT departmentid, MAX(salary)
FROM employee
GROUP BY departmentid
ORDER BY MAX(salary) DESC
LIMIT 1;

SELECT departmentid, MIN(salary)
FROM employee
GROUP BY departmentid
ORDER BY MIN(salary)
LIMIT 1;





