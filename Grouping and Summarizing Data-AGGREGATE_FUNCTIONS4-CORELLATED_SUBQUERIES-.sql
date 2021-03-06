USE AdventureWorks2012;
GO

SELECT CustomerID, SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader AS soh 
WHERE 10 =      
	(SELECT COUNT(*)       
	FROM Sales.SalesOrderDetail       
	WHERE SalesOrderID = soh.SalesOrderID); 
 