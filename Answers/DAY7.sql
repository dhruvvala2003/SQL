CREATE TABLE
	Computer
(
	RollNo INT PRIMARY KEY,
	Name VARCHAR(20)

);

CREATE TABLE
	Electrical
(
	RollNo INT PRIMARY KEY,
	Name VARCHAR(20)

);

CREATE TABLE
	Department
(
	DID INT PRIMARY KEY,
	DName VARCHAR(20)

);

CREATE TABLE
	Student
(
	RollNo INT PRIMARY KEY,
	Name VARCHAR(20),
	City VARCHAR(20),
	DID INT ,

	CONSTRAINT DEP_ID FOREIGN KEY (DID) REFERENCES Department(DID)

);


CREATE TABLE
	Academic
(
	Rno INT PRIMARY KEY,
	SPI DECIMAL(8,2),
	Bklog INT
);

INSERT INTO
	Computer
VALUES 
	(101,'Ajay'),(109,'Haresh'),(115,'Manish');


INSERT INTO
	Student
VALUES 
	(101,'Raju','Rajkot',10),(102,'Amit','Ahmedabad',20),(103,'Sanjay','Baroda',40),(104,'neha','Rajkot',20),
	(1005,'Meera','Ahmedabad',30),(106,'Mahesh','Baroda',10);

INSERT INTO
	Department
VALUES 
	(10,'Computer'),(20,'Electrical'),(30,'Mechanical'),(40,'Civil');


INSERT INTO
	Academic
VALUES 
	(101,8.8,0),(102 ,9.2 ,2 ),(103 ,7.6 ,1 ),(104 ,8.2 ,4 ),(105 ,7.0, 2 ),(106 ,8.9, 3 );

--------------------------------    SET Operators – Part - 1 -------------------------------------------------------

--1
SELECT 
	*
FROM
	Computer

UNION

SELECT 
	*
FROM
	Electrical;

--2

SELECT 
	*
FROM
	Computer

UNION ALL

SELECT 
	*
FROM
	Electrical;

--3
SELECT 
	*
FROM
	Computer

INTERSECT 

SELECT 
	*
FROM
	Electrical;

--4
SELECT 
	*
FROM
	Computer

EXCEPT 

SELECT 
	*
FROM
	Electrical;

---5
SELECT 
	*
FROM
	Electrical

EXCEPT 

SELECT 
	*
FROM
	Computer;

--6
SELECT 
	*
FROM
	Computer

UNION 

SELECT 
	*
FROM
	Electrical;

--7
SELECT 
	*
FROM
	Computer

INTERSECT 

SELECT 
	*
FROM
	Electrical;


-------------------------------------------------------Sub Queries – Part - 1 -----------------------------------------------------

--1
--EASY ONE
--2
SELECT 
	*
FROM
	Student
INNER JOIN
	Academic
ON
	Student.RollNo=Academic.Rno
WHERE 
	SPI>8;

--3
--EASY ONE

--4
SELECT 
	count(*)
from
	Student
WHERE
	DID = (SELECT DID FROM Department WHERE DName='Electrical')

--5
SELECT
	*
FROM
	Student
INNER JOIN
	Academic
ON
	Student.RollNo=Academic.Rno
WHERE
	SPI =(SELECT MAX(SPI) FROM Academic);
	
--6
SELECT 
	*
FROM
	Student
INNER JOIN
	Academic
ON
	Student.RollNo=Academic.Rno	
WHERE
	(Bklog)>1;	
	
--7
SELECT 
	TOP 1 *
FROM
	Student
INNER JOIN
	Academic
ON
	Student.RollNo=Academic.Rno	
WHERE
	SPI <>(SELECT MAX(SPI) FROM Academic)
ORDER BY 
	 SPI DESC;

--8,9,10
--EASY ONE

--------------------------------------------------------Select * Into --------------------------------------------------------------------

CREATE TABLE Cricket
(
	Name VARCHAR(20),
	City VARCHAR(20),
	AGE INT
);

INSERT INTO 
	Cricket 
VALUES 
	('Sachin Tendulkar ','Mumbai',30),('Rahul Dravid ','Bombay',35),('M. S. Dhoni ','Jharkhand',31),('Suresh Raina ','Gujarat',30);

--1
SELECT 
	*
INTO 
	WorldCup
FROM
	Cricket
WHERE
	1=0;

--2
SELECT 
	NAME,CITY
INTO 
	T20
FROM
	Cricket
WHERE
	1=0;

--3
SELECT 
	*
INTO 
	IPL
FROM
	Cricket
WHERE
	1=0;
--4
INSERT INTO IPL
SELECT	
	*
FROM
	Cricket
WHERE
	Name LIKE '_A%' 
	AND
	LEN(NAME)>=7;

--5
TRUNCATE TABLE IPL;

--6
--EASY ONE

--7
EXEC sp_rename 'IPL', 'IPL2018';

--8 
--EASY ONE
