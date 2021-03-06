USE AdventureWorks2012;
GO 


SELECT CustomerID,SUM(TotalDue) AS TotalPerCustomer 
FROM Sales.SalesOrderHeader
GROUP BY CustomerID