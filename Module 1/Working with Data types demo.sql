-- CAST
SELECT CAST(ProductID AS varchar(5)) + ': ' + Name AS ProductName
FROM SalesLT.Product;

--CONVERT
SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductName
FROM SalesLT.Product;

-- CONVERT DATES
SELECT SellStartDate,
	CONVERT(nvarchar(30), SellStartDate) AS ConvertedDate,
	CONVERT(nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate
FROM SalesLT.Product;

--TRY TO CAST
SELECT Name, TRY_CAST (Size AS Integer) AS NumericSize
FROM SalesLT.Product;
