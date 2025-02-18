CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    UnitPrice DECIMAL(10, 2),
    Ingredients NVARCHAR(255),
    Size NVARCHAR(50),
    Weight DECIMAL(10, 2), -- assuming weight in grams
    Colors NVARCHAR(255),
    Category NVARCHAR(100),
    Supplier NVARCHAR(100),
    Discontinued BIT,
    Description NVARCHAR(500)
);

INSERT INTO Product (ProductID, ProductName, UnitPrice, Ingredients, Size, Weight, Colors, Category, Supplier, Discontinued, Description)
VALUES
(1, 'Organic Honey', 120.50, 'Honey', 'Small', 300, 'Gold', 'Sweeteners', 'Supplier1', 0, 'Pure organic honey'),
(2, 'Blueberry Juice', 150.75, 'Blueberries, Sugar', 'Medium', 500, 'Blue', 'Beverages', 'Supplier2', 1, '100% natural blueberry juice'),
(3, 'Green Tea', 50.00, 'Green Tea', 'Large', 100, 'Green', 'Beverages', 'Supplier1', 0, 'Organic green tea leaves'),
(4, 'Sugar-Free Cookies', 30.00, 'Flour, Sugar Substitute', 'Small', 200, 'Brown', 'Snacks', 'Supplier3', 1, 'Delicious sugar-free cookies'),
(5, 'Almond Butter', 200.00, 'Almonds, Salt', 'Large', 600, 'Beige', 'Snacks', 'Supplier2', 0, 'Organic almond butter spread'),
(6, 'Coconut Oil', 90.00, 'Coconut', 'Medium', 450, 'White', 'Cooking Oils', 'Supplier1', 0, 'Cold-pressed coconut oil'),
(7, 'Ginger Tea', 75.00, 'Ginger, Sugar', 'Medium', 250, 'Yellow', 'Beverages', 'Supplier3', 0, 'Spicy ginger tea'),
(8, 'Apple Juice', 60.00, 'Apples, Sugar', 'Small', 200, 'Red', 'Beverages', 'Supplier2', 1, 'Freshly squeezed apple juice'),
(9, 'Organic Oats', 40.00, 'Oats', 'Large', 800, 'Beige', 'Breakfast', 'Supplier1', 0, 'Non-GMO organic oats'),
(10, 'Organic Quinoa', 90.00, 'Quinoa', 'Small', 150, 'White', 'Grains', 'Supplier2', 1, 'Organic quinoa'),
(11, 'Herbal Tea', 35.00, 'Herbs', 'Medium', 250, 'Green', 'Beverages', 'Supplier1', 0, 'Calming herbal tea'),
(12, 'Sugar', 25.00, 'Sugar', 'Small', 500, 'White', 'Sweeteners', 'Supplier2', 1, 'Pure sugar crystals'),
(13, 'Organic Banana Chips', 120.00, 'Bananas, Salt', 'Medium', 350, 'Yellow', 'Snacks', 'Supplier3', 0, 'Crispy banana chips'),
(14, 'Avocado Oil', 140.00, 'Avocados', 'Large', 700, 'Green', 'Cooking Oils', 'Supplier2', 1, 'Cold-pressed avocado oil'),
(15, 'Milk', 15.00, 'Milk', 'Small', 300, 'White', 'Dairy', 'Supplier1', 0, 'Fresh milk'),
(16, 'Cashew Nuts', 80.00, 'Cashews', 'Medium', 400, 'White', 'Snacks', 'Supplier1', 0, 'Salted cashews'),
(17, 'Peanut Butter', 45.00, 'Peanuts, Salt', 'Large', 500, 'Brown', 'Snacks', 'Supplier2', 0, 'Natural peanut butter'),
(18, 'Oatmeal Cookies', 70.00, 'Oats, Sugar', 'Medium', 250, 'Brown', 'Snacks', 'Supplier3', 1, 'Crunchy oatmeal cookies'),
(19, 'Lemon Juice', 30.00, 'Lemons, Sugar', 'Small', 200, 'Yellow', 'Beverages', 'Supplier1', 0, 'Fresh lemon juice'),
(20, 'Mango Juice', 85.00, 'Mangoes, Sugar', 'Medium', 450, 'Orange', 'Beverages', 'Supplier2', 1, '100% natural mango juice');

UPDATE 
	Product
SET
	Colors='Green,Red'
WHERE
	ProductID=14;


SELECT 
	*
FROM
	Product;

---1
SELECT 
	*
FROM
	Product
WHERE
	UnitPrice>100
	AND
	Discontinued=1;

--2
SELECT 
	*
FROM
	Product
WHERE
	Ingredients LIKE '%SUGAR%' 
	AND 
	Weight<500;

--3
--EASY ONE

--4
--EASY ONE

--5
SELECT 
	*
FROM 
	Product
WHERE 
  Colors LIKE '%Red%' 
  AND Colors LIKE '%blue%'
  AND LEN(Colors) - LEN(REPLACE(Colors, ',', '')) + 1 > 1;

--6,7,
--easy one

--8
SELECT 
	*
FROM 
	Product
WHERE
	ProductID  BETWEEN 100 AND 200

--9,10,11,12,13,14
--EASY ONE

--15
SELECT 
	*
FROM 
	Product
WHERE
	Description like '%handmade%'
	AND
	Description like '%eco-friendly%';
--16
--easy one

--17
SELECT 
	*
FROM 
	Product
WHERE
	UnitPrice not between 50 and 150;

--18
--easy one

--19       -----------not solved!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

WITH PercentileRank AS (
    SELECT 
        ProductID, 
        ProductName, 
        UnitPrice, 
        Supplier,
        PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY UnitPrice DESC) OVER () AS PriceThreshold
    FROM Product
    WHERE Supplier = 'Supplier2'
)
SELECT 
    ProductID, 
    ProductName, 
    UnitPrice, 
    Supplier
FROM PercentileRank
WHERE UnitPrice >= PriceThreshold
ORDER BY UnitPrice DESC;





--20
SELECT 
	*
FROM
	Product
WHERE
	Weight>500 
	AND
	Supplier!='Supplier3'
ORDER BY 
	ProductName DESC;

--21
SELECT 
	*
FROM
	Product
WHERE
	(LEN(Supplier)-LEN(REPLACE(Supplier,',',''))+1>1)
	AND
	Discontinued=0;
--22
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice, 
    p.Ingredients
FROM 
    Product p
WHERE 
    p.Ingredients NOT IN (
        SELECT p2.Ingredients
        FROM Product p2
        WHERE p2.Ingredients IS NOT NULL AND p2.ProductID != p.ProductID
    )
ORDER BY 
    p.ProductID;

--23 
--EASYONE 

--24

WITH SupplierAveragePrice AS (
    SELECT 
        Supplier, 
        AVG(UnitPrice) AS AvgUnitPrice  -- Alias added for AVG(UnitPrice)
    FROM Product
    GROUP BY Supplier
    HAVING AVG(UnitPrice) < 80
)
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice, 
    p.Supplier
FROM 
    Product p
JOIN 
    SupplierAveragePrice sap ON p.Supplier = sap.Supplier
ORDER BY 
    p.Supplier, p.UnitPrice DESC;

--25
WITH CategorySupplierAvgPrice AS (
    SELECT 
        Category, 
        Supplier,
        AVG(UnitPrice) AS AvgUnitPrice
    FROM Product
    GROUP BY Category, Supplier
),
MaxAvgPricePerCategory AS (
    SELECT 
        Category,
        MAX(AvgUnitPrice) AS MaxAvgUnitPrice
    FROM CategorySupplierAvgPrice
    GROUP BY Category
)
SELECT 
    p.ProductID, 
    p.ProductName, 
    p.UnitPrice, 
    p.Category, 
    p.Supplier
FROM 
    Product p
JOIN 
    CategorySupplierAvgPrice csa ON p.Category = csa.Category AND p.Supplier = csa.Supplier
JOIN 
    MaxAvgPricePerCategory maxAvg ON p.Category = maxAvg.Category
WHERE 
    csa.AvgUnitPrice = maxAvg.MaxAvgUnitPrice
ORDER BY 
    p.Category, p.UnitPrice DESC;


--26
SELECT
	*
FROM 
	Product
WHERE
	UnitPrice> (SELECT AVG(UnitPrice) FROM Product) 
	AND
	Weight > (SELECT AVG(Weight) FROM Product);

--27
SELECT
	*
FROM 
	Product
WHERE
	LEN(Size)-len(replace(size,',',''))+1>1 
	and
	LEN(Colors)-len(replace(Colors,',',''))+1>1 	

--28
-- Step 1: Create ProductBackUp table with the same structure as Product
SELECT *
INTO ProductBackUp
FROM Product
WHERE 1 = 0;  -- No data is copied, only structure is created.

-- Step 2: Insert all data from Product table into ProductBackUp
INSERT INTO ProductBackUp
SELECT *
FROM Product;

---29
select 
	ProductID,ProductName,Description
INTO 
	ProductDetails
FROM
	Product
WHERE
	1=0;

INSERT INTO	
	ProductDetails
SELECT
	ProductID,ProductName,Description
FROM
	Product

--30
SELECT 
	*
INTO 
	PRD_Product
FROM
	Product
WHERE 
	1=0;

INSERT INTO	
	PRD_Product
SELECT 
	*
FROM
	Product
WHERE
	UnitPrice	<5000;

SELECT * FROM PRD_Product;

--31,32,33,34,35
--EASY ONE

--36
SELECT 
	Category,AVG(UnitPrice)
FROM
	Product
GROUP BY
	Category
HAVING 
	AVG(UnitPrice)>50
ORDER BY 
	AVG(UnitPrice);

--37,38
--EASY ONE
--39
SELECT 
	Category,MAX(UnitPrice)
FROM
	Product
GROUP BY
	Category
HAVING 
	MAX(UnitPrice)>150;

--40,41,42,43
--easy one


--44,45,46,47,48
--EASY ONE

--49
SELECT 
	UnitPrice- (UnitPrice*0.10)
FROM
	Product

--50
SELECT 
	Weight-(SELECT AVG(Weight) FROM Product)
FROM
	Product
--51 ,52
--EASY ONE
	
--53
SELECT 
	UnitPrice+(UnitPrice*0.05)
from
	Product

--54
SELECT 
	MAX(UnitPrice),MIN(UnitPrice),AVG(UnitPrice)
FROM
	Product
GROUP BY
	Supplier;

--55

SELECT 
	COUNT(*),AVG(UnitPrice)
FROM
	Product
GROUP BY
	Category

