-- CREATE TABLE customer 
-- (CustomerID smallint auto_increment,
--  FirstName varchar(25),
--  LastName varchar(30) not null,
--  Phone varchar(16) not null,
--  BirthDate date not null,
--  Primary Key(CustomerID));
--  
-- DESC customer;
--  
-- INSERT INTO customer VALUES
--  (default, "Jon","Smith","22522255","1985-12-5"),
--  (default, 'An','Hone', 22454852, '1956-01-22'), 
--  (default, 'Jun', 'De',26854582,'1984-06-06'), 
--  (default, 'Kent', 'King', 12556842, '1971-05-09'), 
--  (default, 'Barb', 'Smith', 33665252, '1969-06-12'), 
--  (default, NULL, 'Senti', 75584252, '2000-02-25');
--  
-- UPDATE customer
-- SET firstName = "Yoshi"
-- WHERE lastName = "Senti";
--  
-- SELECT*
-- FROM customer;

CREATE TABLE EMP
(empno integer not null,
 name varchar(10),
 job varchar(9),
 boss integer,
 hiredate varchar(12),
 salary decimal(7,2),
 comm decimal(7,2),
 deptno integer not null,
 PRIMARY KEY(empno));

INSERT INTO EMP VALUES
(8182, "SODERBERGH","DIRECTOR",7839, "2012-8-25",8000, NULL,1);

ALTER TABLE EMP 
ADD CONSTRAINT empno
FOREIGN KEY(deptno) REFERENCES DEPT(deptno)
ON DELETE RESTRICT
ON UPDATE CASCADE;

SELECT *
FROM EMP;
 
 
