-- List information about product model 6
SELECT Name, Color, Size--, ProductModelID
FROM SalesLT.Product
WHERE ProductModelID = 6;


-- List information about product model not equal to 6
SELECT Name, Color, Size--, ProductModelID
FROM SalesLT.Product
WHERE ProductModelID <> 6;


-- List information about products that have a product number beginning FR
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%';  -- The % is the wildcard in SQL


-- Filter the previous query to ensure that the product number contains two sets of two digets
SELECT Name, ListPrice, ProductNumber
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]'; -- Underscores means any value but only in that place


-- Display products that have a sell end date
SELECT Name, SellEndDate
FROM SalesLT.Product
WHERE SellEndDate IS NOT NULL;


-- Find products that have a sell end date in 2003
SELECT Name
FROM SalesLT.Product
WHERE SellEndDate BETWEEN '2003/1/1' AND '2003/12/31';


-- Find products that have a category ID of 5, 6, or 7
SELECT ProductCategoryID, Name, ListPrice
FROM SalesLT.Product
WHERE ProductCategoryID IN (5, 6, 7);
--ORDER BY ProductCategoryID;  -- Can add an order


-- Find products that have a category ID of 5, 6, or 7 and don't have a sell end date
SELECT ProductCategoryID, Name, ListPrice, SellEndDate
FROM SalesLT.Product
WHERE ProductCategoryID IN (5, 6, 7) AND SellEndDate IS NULL;
--ORDER BY ProductCategoryID;  -- Can add an order


-- Select products that have a category ID of 5, 6, or 7 and a product number that begins with FR
SELECT Name, ProductCategoryID, ProductNumber
FROM SalesLT.Product
WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5, 6, 7);
--ORDER BY ProductCategoryID;  -- Can add an order