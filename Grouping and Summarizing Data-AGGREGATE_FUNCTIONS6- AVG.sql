USE AdventureWorks2012;
GO 


--Write a query to determine the average freight amount in the Sales.SalesOrderHeader table

SELECT AVG (Freight) AS [average freight amount]
FROM Sales.SalesOrderHeader