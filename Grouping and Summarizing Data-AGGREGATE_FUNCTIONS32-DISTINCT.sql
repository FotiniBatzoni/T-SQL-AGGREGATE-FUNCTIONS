Use AdventureWorks2012; 
GO 
 
-- Write a query using the Sales.SalesOrderDetail table to come up with a count of unique ProductID values that have been ordered. 


SELECT COUNT(DISTINCT ProductID) AS [Unique ProductID]
FROM Sales.SalesOrderDetail