-- Q1
SELECT DISTINCT City, StateProvince
FROM SalesLT.Address;

-- Q2
SELECT TOP 10 PERCENT Name
FROM SalesLT.Product
ORDER BY Weight DESC;

-- Q3
SELECT Name
FROM SalesLT.Product
ORDER BY Weight DESC
OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY;

-- Q4
SELECT Name, Color, Size
FROM SalesLT.Product
WHERE ProductModelID = 1;

-- Q5
SELECT ProductNumber, Name
FROM SalesLT.Product
WHERE Color IN ('Black', 'Red', 'White') AND Size IN ('S', 'M');

-- Q6
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK%';

SELECT ProductNumber FROM SalesLT.Product;
--Q7
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';