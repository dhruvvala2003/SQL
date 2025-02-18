-- Create the Student_Marks table
CREATE TABLE Student_Marks (
    Sid INT PRIMARY KEY,
    SName NVARCHAR(50),
    Marks INT
);

-- Insert data into the Student_Marks table
INSERT INTO Student_Marks (Sid, SName, Marks)
VALUES
(1, 'John', 90),
(2, 'Martin', 80),
(3, 'Carol', 89),
(4, 'Jack', 99),
(5, 'Rose', 88),
(6, 'Mary', 90);

-- for table 2 
-- Create the Employee table
CREATE TABLE Employee1 (
    EID INT NOT NULL PRIMARY KEY,
    EName NVARCHAR(50) NOT NULL,
    Department NVARCHAR(50) NOT NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City NVARCHAR(50) NOT NULL
);

-- Insert data into the Employee table
INSERT INTO Employee1 (EID, EName, Department, Salary, JoiningDate, City)
VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Neha', 'HR', 34000, '1991-12-25', 'Rajkot');
------------------------------------------------------------------------------
SELECT 
	*
FROM
	Student_Marks;

SELECT 
	*
FROM
	Employee1;


--1
SELECT 
	COUNT(*)
FROM
	Student_Marks;

--2
SELECT 
	SUM(Marks)
from
	Student_Marks;

--3
SELECT 
	avg(Marks)
from
	Student_Marks;
--4
SELECT 
	MIN(Marks)
from
	Student_Marks;
---5
SELECT 
	max(Marks)
from
	Student_Marks;

----------------from employee table -----------

----1
SELECT
	MAX(SALARY),MIN(SALARY),AVG(SALARY)
FROM
	Employee1;

--2
SELECT
	COUNT(*)
FROM
	Employee1;
--3

SELECT 
	MAX(SALARY),Department
FROM
	Employee1
GROUP BY 
	Department
HAVING Department='it';

--4
SELECT 
	COUNT(DISTINCT City)
FROM
	Employee1
	
--5
SELECT 
	COUNT(*),CITY
FROM
	Employee1
GROUP BY 
	CITY;

--6
SELECT 
	COUNT(*),CITY
FROM
	Employee1
GROUP BY 
	CITY
HAVING 
	COUNT(*)>1;

--7
---EASY ONE

---8
SELECT 
	AVG(SALARY)
FROM
	Employee1
GROUP BY 
	Department

--9
SELECT 
	MIN(SALARY),CITY
FROM
	Employee1
GROUP BY 
	CITY
HAVING 
	CITY='Ahmedabad';

--10
SELECT 
	DEPARTMENT,SUM(SALARY)
FROM
	Employee1
GROUP BY 
	Department,CITY
HAVING CITY='RAJKOT' AND SUM(SALARY)>50000;


SELECT Department,SUM(SALARY)
FROM Employee1
WHERE City = 'Rajkot'
GROUP BY Department
HAVING SUM(Salary) > 50000;

---11

SELECT COUNT(EID),CITY
FROM Employee1
GROUP BY City
HAVING CITY='RAJKOT';

----12
