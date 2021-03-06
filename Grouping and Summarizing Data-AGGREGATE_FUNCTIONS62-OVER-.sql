USE AdventureWorks2012;
GO

SELECT CustomerID, TotalDue,      
TotalDue / SUM(TotalDue) OVER(PARTITION BY CustomerID) * 100       AS PercentOfSales 
FROM Sales.SalesOrderHeader 
ORDER BY CustomerID;