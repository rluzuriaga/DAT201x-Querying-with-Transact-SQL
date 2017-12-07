-- Q1 
-- select all columns
-- from the SalesLT.Customer table
SELECT * FROM SalesLT.Customer;

-- Q2
-- select the Title, FirstName, MiddleName, LastName and Suffix columns
-- from the Customer table
SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;

-- Q3
-- finish the query
SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;

-- Q4
-- cast the CustomerID column to a VARCHAR and concatenate with the CompanyName column
SELECT CAST(CustomerID AS VARCHAR) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;

-- Q5
-- finish the query
SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	CONVERT(nvarchar(30), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader;

-- Q6
-- use ISNULL to check for middle names and concatenate with FirstName and LastName 
SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName
AS CustomerName
FROM SalesLT.Customer;

-- Q7
-- select the CustomerID, and use COALESCE with EmailAddress and Phone columns
/* Run to get the same result as the lab DataBase
UPDATE SalesLT.Customer
SET EmailAddress = NULL
WHERE CustomerID % 7 = 1;
*/
SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

--Q8
/* Run to get the same result as the lab DataBase
UPDATE SalesLT.SalesOrderHeader
SET ShipDate = NULL
WHERE SalesOrderID > 71899;
*/
SELECT SalesOrderID, OrderDate,
	CASE
		WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
		ELSE 'Shipped'
	END AS ShippingStatus
FROM SalesLT.SalesOrderHeader
