USE AdventureWorks2012;
GO 

SELECT CustomerID,SUM(TotalDue) AS TotalPerCustomer
FROM Sales.SalesOrderHeader
GROUP BY CustomerID 
HAVING COUNT(*) = 10 AND SUM(TotalDue) > 5000