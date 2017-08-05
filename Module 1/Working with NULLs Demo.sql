-- NULL numbers = 0
SELECT Name, ISNULL(TRY_CAST(Size AS Integer), 0) AS NumericSize -- ISNULL function is trying to cast Size as an int but if it is null then outputs 0
FROM SalesLT.Product;

-- NULL strings = blank string
SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails
FROM SalesLT.Product;

-- Multi color = NULL
SELECT Name, NULLIF(Color, 'Multi') AS SingleColor -- Makes it NULL if Color is Multi
FROM SalesLT.Product;

-- Find first non-null date
SELECT Name, COALESCE(DiscontinuedDate, SellEndDate, SellStartDate) AS LastActivity -- COALESCE is like an if else statement that checks each column for the one that is not NULL and displays that one
FROM SalesLT.Product;

-- Searched case
SELECT NAME,
	CASE
		WHEN SellEndDate IS NULL THEN 'On sale'
		ELSE 'Discontinued'
	END AS SalesStatus
FROM SalesLT.Product;

-- Simple case
SELECT Name,
	CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'Extra-Large'
		ELSE ISNULL(Size, 'N/A')
	END AS ProductSize
FROM SalesLT.Product;
