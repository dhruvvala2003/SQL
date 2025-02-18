CREATE TABLE
	Customer
(
	CustomerID  VARCHAR(20),
	CustNumber  NUMERIC,
	LastName  VARCHAR(20),
	FirstName  VARCHAR(20),
	AreaCode NUMERIC,
	Address VARCHAR(50),
	Phone NUMERIC

);

ALTER TABLE Customer
ALTER COLUMN CustomerID VARCHAR(20) NOT NULL;

ALTER TABLE Customer
ADD CONSTRAINT PK_Customer PRIMARY KEY (CustomerID);



INSERT INTO Customer (CustomerID, CustNumber, LastName, FirstName, AreaCode, Address, Phone)
VALUES
('C001', 101, 'Smith', 'John', 123, '123 Elm St', 5551234567),
('C002', 102, 'Doe', 'Jane', 456, '456 Oak St', 5552345678),
('C003', 103, 'Taylor', 'Mike', 789, '789 Pine St', 5553456789),
('C004', 104, 'Johnson', 'Emily', 321, '321 Birch St', 5554567890),
('C005', 105, 'Brown', 'Chris', 654, '654 Maple St', 5555678901),
('C006', 106, 'Davis', 'Sarah', 987, '987 Cedar St', 5556789012),
('C007', 107, 'Miller', 'David', 432, '432 Elmwood St', 5557890123),
('C008', 108, 'Wilson', 'Lisa', 543, '543 Pinewood St', 5558901234),
('C009', 109, 'Moore', 'James', 876, '876 Oakwood St', 5559012345),
('C010', 110, 'Taylor', 'Laura', 234, '234 Birchwood St', 5550123456),
('C011', 111, 'Anderson', 'Tom', 678, '678 Maplewood St', 5551234568),
('C012', 112, 'Thomas', 'Kelly', 321, '321 Cedarwood St', 5552345679),
('C013', 113, 'Jackson', 'Sophia', 654, '654 Elmwood Dr', 5553456790),
('C014', 114, 'White', 'William', 987, '987 Pinewood Dr', 5554567891),
('C015', 115, 'Harris', 'Samantha', 432, '432 Oakwood Dr', 5555678902),
('C016', 116, 'Martin', 'Andrew', 543, '543 Birchwood Dr', 5556789013),
('C017', 117, 'Garcia', 'Patricia', 876, '876 Maplewood Dr', 5557890124),
('C018', 118, 'Roberts', 'Charles', 234, '234 Cedarwood Dr', 5558901235),
('C019', 119, 'Clark', 'Nancy', 678, '678 Elmwood Ln', 5559012346),
('C020', 120, 'Rodriguez', 'Donald', 321, '321 Pinewood Ln', 5550123457),
('C021', 121, 'Lewis', 'Samantha', 654, '654 Oakwood Ln', 5551234569),
('C022', 122, 'Walker', 'Brandon', 987, '987 Birchwood Ln', 5552345680),
('C023', 123, 'Allen', 'Kimberly', 432, '432 Cedarwood Ln', 5553456791),
('C024', 124, 'Young', 'George', 543, '543 Elmwood Ave', 5554567892),
('C025', 125, 'King', 'Betty', 876, '876 Oakwood Ave', 5555678903),
('C026', 126, 'Scott', 'Jessica', 234, '234 Pinewood Ave', 5556789014),
('C027', 127, 'Green', 'Steven', 678, '678 Birchwood Ave', 5557890125),
('C028', 128, 'Adams', 'Ashley', 321, '321 Cedarwood Ave', 5558901236),
('C029', 129, 'Baker', 'Mark', 654, '654 Elmwood Blvd', 5559012347),
('C030', 130, 'Gonzalez', 'Olivia', 987, '987 Oakwood Blvd', 5550123458);

SELECT 
	*
FROM
	Customer;

--1
SELECT 
	CustNumber,AreaCode
FROM 
	Customer;
--2

SELECT 
	LastName AS [SURNAME], Phone AS [Mobile]
FROM
	Customer;

--3
SELECT 
	*
FROM
	Customer 
WHERE
	AreaCode=543;

--4
SELECT 
	*
FROM
	Customer
WHERE
	LastName IN ('patel' , 'patidar');

--5
SELECT 
	*
FROM
	Customer 
WHERE
	AreaCode !=543;

--6

SELECT 
	*
FROM
	Customer
WHERE
	CustomerID in (SELECT CustomerID FROM Customer WHERE SUBSTRING(CustomerID ,2,LEN(CustomerID) ) BETWEEN 1 AND 50);
	
--7
	
SELECT 
	*
FROM
	Customer
WHERE
	AreaCode BETWEEN 200 AND 400;

--8


SELECT 
	*
FROM
	Customer
WHERE
	Phone is not null;

--9

SELECT 
	DISTINCT(AreaCode)
FROM
	Customer

--10

SELECT 
	*
FROM
	Customer
ORDER BY
	LastName ASC;

--11

SELECT 
	*
FROM
	Customer
ORDER BY 
	FirstName DESC,CustNumber DESC;

--12

SELECT 
	*
FROM
	Customer
WHERE
	AreaCode =(SELECT SUBSTRING('B123' ,2,LEN('B123') )) AND Address IS NOT NULL;

--13
SELECT 
	*
FROM
	Customer
WHERE
	Address LIKE ('%ST%');

--14
SELECT 
	FirstName
FROM
	Customer
WHERE 
	FirstName LIKE '%raj%'
	OR
	FirstName LIKE '%rohit%'
	OR
	FirstName LIKE '%Mohit%'

--15
SELECT 
	*
FROM
	Customer
WHERE 
	LastName != 'smit';

--16
SELECT 
	*
FROM
	Customer
WHERE 
	CustNumber is NULL;

--17
SELECT 
	*
FROM
	Customer
WHERE 
	CustNumber 
BETWEEN
	(SELECT SUBSTRING('A100' ,2,LEN('A100')) ) AND (SELECT SUBSTRING('A200' ,2,LEN('A200')) )

--18
SELECT 
	*
FROM
	Customer
WHERE
	LastName NOT IN('SMIT','Johnson');

--19
SELECT 
	*
FROM
	Customer
WHERE
	Address IS NULL;

--20
SELECT 
	*
FROM
	Customer
WHERE
	LastName like '%MER%'
	OR
	LastName like '%KANBI%'
	OR
	LastName like '%RABARI%';

--21
SELECT 
	*
FROM
	Customer
WHERE
	LastName ='patel'
	AND
	FirstName IN ( 'john', 'smit' , 'sneha');

--22
SELECT 
	*
FROM
	Customer
WHERE
	CustNumber IS NOT NULL
	AND
	CustNumber != 0000000000;

--23
SELECT 
	*
FROM
	Customer
WHERE
	CustomerID IN (SELECT CustomerID FROM Customer WHERE SUBSTRING(CustomerID,2,LEN(CustomerID)) BETWEEN 500 AND 1000 );

--24
SELECT 
	LastName,CustNumber
FROM
	Customer
WHERE
	LastName IS NULL;

--25
SELECT 
	*
FROM
	Customer
WHERE
	CustomerID NOT IN (SELECT CustomerID FROM Customer WHERE SUBSTRING(CustomerID,2,LEN(CustomerID)) BETWEEN 500 AND 1000 );

--26
SELECT 
	*
FROM
	Customer
WHERE
	LastName LIKE '%_OHN%'
	AND
	Phone is not null;

--27
SELECT 
	DISTINct(CustNumber)
FROM
	Customer;

--28
SELECT 
	*
FROM
	Customer
WHERE
(AreaCode =123 AND LastName ='Smit')
or
(AreaCode=123 AND FirstName ='JOHN');


--29
SELECT 
	*
FROM
	Customer
WHERE
	CustomerID  IN (SELECT CustomerID FROM Customer WHERE(SUBSTRING(CustomerID,2,LEN(CustomerID))<100 OR SUBSTRING(CustomerID,2,LEN(CustomerID))>500 )
														AND
														(AreaCode IN (123,456)));


--30
SELECT 
	*
FROM
	Customer
WHERE
	FirstName != 'MIKE'
	AND
	LastName != 'TYSON';

--31 select even records from customer table 
WITH CustomerWithRowNum AS (
    SELECT 
        CustomerID, 
        FirstName, 
        LastName, 
        ROW_NUMBER() OVER (ORDER BY CustomerID ) AS RowNum
    FROM Customer
)
SELECT 
    CustomerID, 
    FirstName, 
    LastName
FROM CustomerWithRowNum
WHERE RowNum % 2 = 0; 
	
	
--32
SELECT 
	Phone,CustNumber,FirstName 
FROM
	Customer
WHERE
	Phone is null
	OR
	CustNumber is null;



--33
SELECT 
	*
FROM
	Customer
WHERE
	CustomerID IN ('C001','C009','C010');


--34
SELECT 
	CustNumber as [customer code]
FROM
	Customer;

	

--35
SELECT 
	CONCAT(AreaCode , Address) AS [ Full Address]
FROM
	Customer;

--36
SELECT 
	FirstName AS [fname], LastName AS [lname]
FROM
	Customer

--37
DELETE
	Customer
WHERE
	Phone IS NULL;

--38
UPDATE 
	Customer
SET
	CustNumber =101,LastName='PATEL'
WHERE
	CustNumber=102;

--39
DELETE 
	Customer
WHERE
	Address IS NOT NULL;

--40
EXEC sp_rename 'Customer', 'Customer_Master';



SELECT 
	*
FROM
	Customer;

-----------------------------like queryes ---------------------------------------

--1
SELECT 
	*
FROM
	Customer
WHERE
	CustNumber LIKE 'A%';

--2
SELECT 
	*
FROM
	Customer
WHERE
	FirstName LIKE 'J%';

--3
SELECT 
	*
FROM
	Customer
WHERE
	AreaCode LIKE '12%';

--4
SELECT 
	*
FROM
	Customer
WHERE
	FirstName NOT LIKE 'A%';

--6
SELECT 
	*
FROM
	Customer
WHERE
	(AreaCode BETWEEN 400 AND 500 ) AND LastName LIKE '%SON';

--7
SELECT 
	*
FROM
	Customer
WHERE
	FirstName IN ('Robert','Richard') AND LastName LIKE 'D%';

--8
SELECT 
	*
FROM
	Customer
WHERE
	AreaCode IN (123,456) AND LastName NOT LIKE 'S%';

--9
SELECT 
	*
FROM
	Customer
WHERE
	AreaCode LIKE '12%' AND Phone LIKE '987%';

--10
--EASY ONE 

--11
SELECT 
	*
FROM
	Customer
WHERE
	FirstName ='Alice' AND LastName LIKE '[B/C]%';

--12
SELECT 
	*
FROM
	Customer
WHERE
	AreaCode LIKE '2%' AND (Phone IS NULL OR Phone LIKE '98%');

--13
SELECT 
	*
FROM
	Customer
WHERE
	Phone LIKE '555%' AND  AreaCode !=123;

--14
--EASY ONE

--15
--EASY ONE 

--16
SELECT 
	*
FROM
	Customer
WHERE
	LastName LIKE '[B/C]%' AND Phone IS NOT NULL;

--17
SELECT 
	*
FROM
	Customer
WHERE
	(FirstName LIKE 'J%' AND LastName LIKE 'J%' )
	OR
	(AreaCode =789 AND Phone IS NOT NULL )

--18
--EASY ONE 

--19
SELECT 
	*
FROM
	Customer
WHERE
	LastName LIKE '%RER%';

--20
--EASY ONE 

--21
SELECT 
	*
FROM
	Customer
WHERE
	FirstName LIKE '%[A/E/I/O/U]';

--22
--EASY ONE

--23
SELECT 
	*
FROM
	Customer
WHERE
	LEN(FirstName)=5  or LEN(LastName)=5 

--24
--easy one

--25
SELECT 
	*
FROM
	Customer
WHERE
	FirstName LIKE '[A-T]%';