	-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT ,
    Location VARCHAR(100)
);

-- Create the Employee table
CREATE TABLE Employee (
    EmployeeID INT  PRIMARY KEY,
    FirstName VARCHAR(100) ,
    LastName VARCHAR(100),
    DoB DATETIME ,
    Gender VARCHAR(50) ,
    HireDate DATETIME ,
    DepartmentID INT  FOREIGN KEY REFERENCES Departments(DepartmentID),
    Salary DECIMAL(10, 2)
);

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID INT  PRIMARY KEY,
    ProjectName VARCHAR(100) ,
    StartDate DATETIME ,
    EndDate DATETIME ,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID)
);

-- Department 1: IT Department with Manager (EmployeeID 1)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (1, 'IT', 1, 'New York');

-- Department 2: HR Department with Manager (EmployeeID 2)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (2, 'HR', 2, 'London');

-- Department 3: Marketing Department with Manager (EmployeeID 3)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (3, 'Marketing', 3, 'San Francisco');

-- Department 4: Sales Department with no manager (NULL for ManagerID)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (4, 'Sales', NULL, 'Chicago');

-- Department 5: Finance Department with Manager (EmployeeID 7)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (5, 'Finance', 7, 'Toronto');

-- Department 6: Operations Department with Manager (EmployeeID 8)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (6, 'Operations', 8, 'Berlin');

-- Department 7: Research & Development with Manager (EmployeeID 9)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (7, 'Research & Development', 9, 'Sydney');

-- Department 8: Legal Department with Manager (EmployeeID 10)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (8, 'Legal', 10, 'Paris');

-- Department 9: Customer Service Department with Manager (EmployeeID 11)
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location)
VALUES (9, 'Customer Service', 11, 'Singapore');


-------------------------

-- Employee 1: IT Department, Manager of IT
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (1, 'John', 'Doe', '1985-06-15', 'Male', '2010-05-20', 1, 85000);

-- Employee 2: HR Department, Manager of HR
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (2, 'Jane', 'Smith', '1990-09-10', 'Female', '2015-08-25', 2, 65000);

-- Employee 3: Marketing Department, Manager of Marketing
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (3, 'Alice', 'Johnson', '1988-02-05', 'Female', '2012-11-30', 3, 90000);

-- Employee 4: No department assigned
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (4, 'Mark', 'Taylor', '1992-03-22', 'Male', '2018-07-14', NULL, 50000);

-- Employee 5: Marketing Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (5, 'Emily', 'Davis', '1995-04-30', 'Female', '2019-01-10', 3, 70000);

-- Employee 6: Sales Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (6, 'Brian', 'King', '1980-11-15', 'Male', '2005-03-01', 4, 55000);

-- Employee 7: Finance Department, Manager of Finance
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (7, 'Michael', 'Morris', '1982-07-01', 'Male', '2011-04-19', 5, 95000);

-- Employee 8: Operations Department, Manager of Operations
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (8, 'Sophia', 'Lee', '1990-08-10', 'Female', '2016-05-30', 6, 76000);

-- Employee 9: Research & Development Department, Manager of Research & Development
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (9, 'Lucas', 'Martinez', '1985-12-03', 'Male', '2014-09-22', 7, 87000);

-- Employee 10: Legal Department, Manager of Legal
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (10, 'Olivia', 'Wilson', '1989-04-25', 'Female', '2017-03-14', 8, 71000);

-- Employee 11: Customer Service Department, Manager of Customer Service
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (11, 'Ethan', 'Johnson', '1993-01-18', 'Male', '2020-07-22', 9, 45000);

-- Employee 12: IT Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (12, 'Charlotte', 'Harris', '1983-11-29', 'Female', '2010-02-16', 1, 105000);

-- Employee 13: HR Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (13, 'David', 'Brown', '1991-10-12', 'Male', '2016-03-07', 2, 62000);

-- Employee 14: Sales Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (14, 'Sophia', 'Clark', '1994-05-06', 'Female', '2019-10-20', 4, 48000);

-- Employee 15: IT Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (15, 'Zoe', 'Miller', '1992-05-15', 'Female', '2021-06-25', 1, 58000);

-- Employee 16: HR Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (16, 'Liam', 'Moore', '1987-12-11', 'Male', '2014-09-10', 2, 74000);

-- Employee 17: Marketing Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (17, 'Ava', 'Taylor', '1994-07-02', 'Female', '2020-05-14', 3, 52000);

-- Employee 18: Sales Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (18, 'Ethan', 'Hernandez', '1996-03-22', 'Male', '2021-04-08', 4, 49000);

-- Employee 19: Research & Development Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (19, 'Mia', 'Gonzalez', '1989-10-03', 'Female', '2015-11-21', 7, 88000);

-- Employee 20: Finance Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (20, 'James', 'Parker', '1991-01-25', 'Male', '2016-06-15', 5, 75000);

-- Employee 21: Customer Service Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (21, 'Chloe', 'Lee', '1994-11-17', 'Female', '2019-02-25', 9, 45000);

-- Employee 22: Operations Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (22, 'Daniel', 'Martinez', '1990-08-30', 'Male', '2017-01-14', 6, 78000);

-- Employee 23: Legal Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (23, 'Charlotte', 'Williams', '1992-12-18', 'Female', '2020-09-02', 8, 67000);

-- Employee 24: IT Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (24, 'David', 'Rodriguez', '1985-06-01', 'Male', '2013-07-12', 1, 89000);

-- Employee 25: Marketing Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (25, 'Sophia', 'Young', '1988-02-27', 'Female', '2016-12-04', 3, 72000);

-- Employee 26: HR Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (26, 'Jacob', 'Davis', '1995-06-30', 'Male', '2021-01-13', 2, 55000);

-- Employee 27: Finance Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (27, 'Lily', 'Moore', '1993-07-10', 'Female', '2019-09-28', 5, 70000);

-- Employee 28: Operations Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (28, 'Matthew', 'Taylor', '1988-01-05', 'Male', '2015-11-16', 6, 82000);

-- Employee 29: Sales Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (29, 'Isabella', 'White', '1996-04-25', 'Female', '2020-07-07', 4, 47000);

-- Employee 30: Customer Service Department
INSERT INTO Employee (EmployeeID, FirstName, LastName, DoB, Gender, HireDate, DepartmentID, Salary)
VALUES (30, 'Joshua', 'Morris', '1994-11-11', 'Male', '2018-09-29', 9, 46000);




-----------------

-- Project 1: IT Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (1, 'Website Revamp', '2023-01-01', '2023-12-31', 1);

-- Project 2: HR Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (2, 'Employee Training Program', '2022-05-15', '2022-12-15', 2);

-- Project 3: Marketing Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (3, 'Product Launch', '2023-06-01', '2024-01-31', 3);

-- Project 4: No department assigned
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (4, 'New Marketing Strategy', '2023-01-01', '2023-12-31', NULL);

-- Project 5: Finance Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (5, 'Financial Audit 2023', '2023-01-15', '2023-06-30', 5);

-- Project 6: Operations Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (6, 'Supply Chain Optimization', '2023-03-01', '2023-12-01', 6);

-- Project 7: Research & Development Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (7, 'AI Research', '2022-07-15', '2023-07-14', 7);

-- Project 8: Legal Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (8, 'Intellectual Property Protection', '2023-05-01', '2024-05-01', 8);

-- Project 9: Customer Service Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (9, 'Customer Feedback System', '2023-02-10', '2023-08-10', 9);

-- Project 10: IT Department
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (10, 'Cloud Migration', '2022-11-01', '2023-11-01', 1);

-- Project 11: No department assigned
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, DepartmentID)
VALUES (11, 'Corporate Merger', '2023-02-01', '2023-12-31', NULL);

-----------------------select query ------------------------------

--1
SELECT 
		EmployeeID,FirstName, DepartmenTS.DepartmentID,DepartmentName
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.DepartmentID=DepartmenTS.DepartmentID;

--2

	WITH ManagerDetails AS
	(
		SELECT 
			ManagerID ,FirstName
		FROM
			Employee
		INNER JOIN	
			Departments
		ON
			Employee.EmployeeID=DepartmentS.ManagerID
	)
	SELECT 
		*
	FROM
		Departments
	INNER JOIN
		ManagerDetails
	ON
		Departments.ManagerID=ManagerDetails.ManagerID;

--3
SELECT
	ProjectName,DepartmentName
FROM
	Projects
LEFT JOIN
	Departments
ON
	Projects.DepartmentID=Departments.DepartmentID

--4
--EASY ONE

--5
SELECT 
	*
FROM
	Employee
LEFT JOIN
	ProjectS
ON
	Employee.DepartmentID=Projects.DepartmentID;

--6
--EASY ONE

--7
SELECT 
	*
FROM
	Employee
WHERE
	DepartmentID IS NULL;

--8
SELECT 
	EmployeeID,FirstName,DepartmentName,ProjectName
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.DepartmentID=Departments.DepartmentID
INNER JOIN
	Projects
ON
	Employee.DepartmentID=Projects.DepartmentID

--9
SELECT 
	*
FROM
	Departments
LEFT JOIN
	Projects
ON
	Departments.DepartmentID=Projects.DepartmentID
WHERE 
	ProjectID IS NULL;

--10
	WITH ManagerDetails AS
	(
		SELECT 
			ManagerID ,FirstName,Employee.DepartmentID
		FROM
			Employee
		INNER JOIN	
			Departments
		ON
			Employee.EmployeeID=DepartmentS.ManagerID
	)
SELECT 
	*
FROM
	Projects
INNER JOIN
	ManagerDetails
ON
	Projects.DepartmentID=ManagerDetails.departmentId

--11

SELECT 
	DepartmentName,SUM(SALARY)
FROM
	Departments
LEFT JOIN
	Employee
ON
	Departments.DepartmentID=Employee.DepartmentID
GROUP BY
	DepartmentName

--12

SELECT 
	*
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.DepartmentID=DepartmentS.DepartmentID
WHERE
	Employee.DepartmentID=Departments.DepartmentID
AND Departments.ManagerID IS NOT NULL;

--13
WITH DepWiseAvgSalary AS
(
	SELECT 
		DepartmentID, AVG(SALARY) AS AvgSalary
	FROM
		Employee
	GROUP BY 
		DepartmentID
	HAVING DepartmentID IS NOT NULL

)
SELECT 
	*
FROM
	Employee
INNER JOIN
	DepWiseAvgSalary
ON
	Employee.DepartmentID=DepWiseAvgSalary.DepartmentID	
WHERE
	Employee.Salary>AvgSalary;

--14, 16
--easy one 

--15
WITH ManagerDetails 
AS
(
	SELECT 
		MANAGERID,HireDate 
	FROM
		Employee E1
	INNER JOIN	
		Departments E2
	ON
		E1.EmployeeID=E2.ManagerID
)
SELECT 
	*
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.DepartmentID=Departments.DepartmentID
INNER JOIN 
	ManagerDetails
ON
	Departments.ManagerID=ManagerDetails.ManagerID
WHERE
	Employee.HireDate<ManagerDetails.HireDate

--16
WITH HighestSalaryDepWise AS
(
select 
	DepartmentID,max(salary) as maxSalary
	from
		Employee
	group by DepartmentID
	having DepartmentID is not null

)
select 
	*
from
	Employee
inner join	
	HighestSalaryDepWise
on
	Employee.DepartmentID=HighestSalaryDepWise.DepartmentID
where
	Employee.Salary=HighestSalaryDepWise.maxSalary
	
--17
select 
	*
FROM
	Projects
WHERE
	StartDate IS NULL;

--18
SELECT 
	*
FROM
	Departments
INNER JOIN
	Projects
ON
	Departments.DepartmentID=Projects.DepartmentID
WHERE
	EndDate<GETDATE()
--19
WITH DepMoreThen3project
AS
(
	SELECT 
		Departments.DepartmentID,COUNT(ProjectID)AS ProjectCount
	FROM
		Departments
	INNER JOIN
		Projects
	ON
		Departments.DepartmentID=ProjectS.DepartmentID
	GROUP BY             
		Departments.DepartmentID
	HAVING
		COUNT(ProjectID)>1

)
SELECT 
	*
FROM
	Employee
INNER JOIN
	DepMoreThen3project
ON
	Employee.DepartmentID=DepMoreThen3project.DepartmentID

--20
SELECT 
	*
FROM
	Projects
INNER JOIN
	Employee
ON
	Projects.DepartmentID=Employee.DepartmentID
WHERE
	YEAR(GETDATE())-YEAR(DoB)>40;

--21,22
--EASY ONE

--23

WITH ManagerDetails AS
(
SELECT 
	MANAGERID,Departments.DepartmentID
FROM
	Departments


)
SELECT 
	*
FROM
	Employee
INNER JOIN
	 Departments
ON
	Employee.DepartmentID=DepartmentS.DepartmentID
INNER JOIN
	ManagerDetails
ON 
	Employee.DepartmentID=ManagerDetails.DepartmentID
WHERE
	Departments.ManagerID=ManagerDetails.ManagerID

--24


SELECT 
	COUNT(EMPLOYEEID),DepartmentID
FROM
	Employee
WHERE Salary>100000
GROUP BY 
	DepartmentID
HAVING 
	COUNT(*)>1

--25
WITH DepWisePROJECT AS(

SELECT 
	COUNT(PROJECTID)AS C , DepartmentID
FROM
	Projects
GROUP BY 
	DepartmentID
HAVING
	DepartmentID IS NOT NULL
)
SELECT 
	DepartmentID
FROM
	DepWisePROJECT
WHERE
	C=(SELECT MAX(C) FROM DepWisePROJECT);

--26,27,28
--EASY ONE

---29
WITH DepWiseAvgSalkary
AS
(
SELECT 
	AVG(SALARY) AS A,DepartmentID
FROM	
	Employee
GROUP BY 
	DepartmentID
HAVING 
	DepartmentID IS NOT NULL
)
SELECT 
	*
FROM
	Employee E1
INNER JOIN
	Departments
ON
	E1.EmployeeID=Departments.ManagerID
INNER JOIN
	DepWiseAvgSalkary
ON
	E1.DepartmentID=DepWiseAvgSalkary.DepartmentID
WHERE
	Salary<A

--30
--EASY ONE

--31
WITH OldEmpDepWise
AS
(
	SELECT 
		DepartmentID,MIN(HireDate)AS H
	FROM
		Employee
	GROUP BY 
		DepartmentID
	HAVING 
		DepartmentID IS NOT NULL
)
SELECT 
	*
FROM
	Employee
INNER JOIN
	OldEmpDepWise
ON
	Employee.DepartmentID=OldEmpDepWise.DepartmentID
WHERE
	HireDate=H

--32
SELECT 
	Employee.DepartmentID,AVG(SALARY)
FROM
	Employee
INNER JOIN
	Projects
ON
	Employee.DepartmentID=ProjectS.DepartmentID
WHERE
	YEAR(StartDate)=2023  --WORK WITH 2022
GROUP BY 
	Employee.DepartmentID
HAVING 
	YEAR(StartDate)=2013;

--33
--EASY ONE

--34
--ALREDY SOLVE

--35,36
--EASY ONE

--37
SELECT p.ProjectID, p.ProjectName, p.StartDate, p.EndDate, p.DepartmentID
FROM Projects p
LEFT JOIN Employee e ON p.DepartmentID = e.DepartmentID
GROUP BY p.ProjectID, p.ProjectName, p.StartDate, p.EndDate, p.DepartmentID
HAVING COUNT(e.EmployeeID) = 0;

--38
--EASY ONE 

--39

--40

SELECT 
	ManagerID ,Employee.DepartmentID
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.EmployeeID=DepartmentS.ManagerID
WHERE
	YEAR(GETDATE())-YEAR(HireDate)>10


--41
--EASY ONE

--42
SELECT 
	ManagerID ,Employee.DepartmentID
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.EmployeeID=DepartmentS.ManagerID



--43 
---easy one 

--44
SELECT 
	*
FROM
	Projects
WHERE
	YEAR(EndDate)<2023;
	
--45
WITH ManagerDetails	AS
(
	SELECT 
		ManagerID,Salary,FirstName,Employee.DepartmentID
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	WHERE
		EmployeeID=ManagerID
		AND 
		YEAR(GETDATE())-YEAR(HIREDATE)>10
)
SELECT 
	Employee.DepartmentID,COUNT(EMPLOYEEID)
FROM
	Employee
INNER JOIN
	ManagerDetails
ON
	Employee.DepartmentID=ManagerDetails.DepartmentID
GROUP BY
	Employee.DepartmentID


--46
SELECT 
	DepartmentS.DepartmentID,COUNT(PROJECTID)
FROM
	Departments
LEFT JOIN
	Projects
ON
	DepartmentS.DepartmentID=ProjectS.DepartmentID
GROUP BY
	DepartmentS.DepartmentID
HAVING 
	COUNT(PROJECTID)=0;

--47
--EASYD OEN

--48
SELECT	
	*
FROM
	Employee
INNER JOIN 
	Projects
ON
	Employee.DepartmentID=Projects.DepartmentID
WHERE
	STARTDATE<HIREDATE;

--49
WITH ManagerDetails	AS
(
	SELECT 
		ManagerID,Salary,FirstName,Employee.DepartmentID
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	WHERE
		EmployeeID=ManagerID
)


SELECT 
	*
FROM 
	Departments
INNER JOIN
	ManagerDetails
ON
	DepartmentS.DepartmentID=ManagerDetails.DEPARTMENTID
WHERE
	Salary<70000








--50

WITH ManagerDetails	AS
(
	SELECT 
		ManagerID,Salary,FirstName,Employee.DepartmentID
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	WHERE
		EmployeeID=ManagerID
),
EmpDepWiseEMPWhoseSalLessThenManager as
(
	Select 
		Employee.DepartmentID,COUNT(EMPLOYEEID) AS Selected
	from
		Employee
	INNER JOIN	
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	INNER JOIN	
		ManagerDetails
	ON
		Departments.ManagerID=ManagerDetails.ManagerID
	WHERE
		Employee.Salary < ManagerDetails.Salary
	GROUP BY
		Employee.DepartmentID
	 	
),
DepWiseEmp AS
(
	Select 
		Employee.DepartmentID,COUNT(EMPLOYEEID) AS Total
	from
		Employee
	INNER JOIN	
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	group by
		Employee.DepartmentID

)
select 
	EMPLOYEE.DepartmentID,COUNT(EmployeeID)
FROM
	Employee
INNER JOIN
	Departments
ON
	Employee.DepartmentID=Departments.DepartmentID
INNER JOIN
	ManagerDetails
ON
	Employee.DepartmentID=ManagerDetails.DepartmentID
INNER JOIN
	DepWiseEmp
ON
	Employee.DepartmentID=DepWiseEmp.DepartmentID
INNER JOIN
	EmpDepWiseEMPWhoseSalLessThenManager
ON
	Employee.DepartmentID=EmpDepWiseEMPWhoseSalLessThenManager.DepartmentID
WHERE 
	Selected>Total/2
group by
	Employee.DepartmentID



--51
WITH DepWiseHighestSalary
AS
(
	SELECT 
		DepartmentID,MAX(SALARY) AS M
	FROM
		Employee
	GROUP BY 
		DepartmentID
	HAVING
		DepartmentID IS NOT NULL
)
SELECT 
	*
FROM
	DepWiseHighestSalary
WHERE
	M= (SELECT MAX(M) FROM DepWiseHighestSalary);

--55
SELECT 
	EmployeeID,COUNT(DEPARTMENTID)
FROM
	Employee
GROUP BY
	EmployeeID
HAVING 
	COUNT(DEPARTMENTID)>0;


--56


SELECT 
	Employee.DepartmentID,SUM(SALARY)
FROM
	Employee
GROUP BY
	DepartmentID
HAVING 
	SUM(SALARY)>(SELECT AVG(SALARY) FROM Employee)

--57
SELECT	
		Employee.DepartmentID,AVG(SALARY)
FROM	
	Employee
INNER JOIN
	Projects
ON
	Employee.DepartmentID=ProjectS.DepartmentID
WHERE
	YEAR(StartDate)>=2022 AND YEAR(EndDate)<=2025
GROUP BY 
	Employee.DepartmentID;

 
	


--58
WITH ManagerDetails	AS
(
	SELECT 
		ManagerID,Salary,FirstName as managername,Employee.DepartmentID
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	WHERE
		EmployeeID=ManagerID
),
DepWiseAvgSalary AS 
(
	SELECT 
		Employee.DepartmentID,AVG(SALARY) AS AvgSalary
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	GROUP BY
		Employee.DepartmentID

)
SELECT 
	*
FROM	
	Departments
INNER JOIN
	ManagerDetails
ON
	Departments.DepartmentID= ManagerDetails.DepartmentID
INNER JOIN
	DepWiseAvgSalary
ON
	Departments.DepartmentID= DepWiseAvgSalary.DepartmentID
WHERE 
	ManagerDetails.Salary<AvgSalary
--59

WITH ManagerDetails	AS
(
	SELECT 
		ManagerID,Salary,FirstName as managername,Employee.DepartmentID
	FROM
		Employee
	INNER JOIN
		Departments
	ON
		Employee.DepartmentID=DepartmentS.DepartmentID
	WHERE
		EmployeeID=ManagerID
)
SELECT 
	*
FROM
	Employee
INNER JOIN
	ManagerDetails
ON
	Employee.DepartmentID=ManagerDetails.DepartmentID
INNER JOIN
	Projects
ON
	Employee.DepartmentID=ProjectS.DepartmentID

--60
---EASY OEN

