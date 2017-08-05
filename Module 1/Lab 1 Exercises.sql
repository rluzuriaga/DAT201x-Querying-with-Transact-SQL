-- Q1 
SELECT * FROM SalesLT.Customer;

-- Q2
SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;

-- Q3
SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;

-- Q4
SELECT CAST(CustomerID AS VARCHAR) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;

-- Q5
SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	CONVERT(nvarchar(30), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader;

-- Q6
SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName
AS CustomerName
FROM SalesLT.Customer;

-- Q7
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
