Use AdventureWorks2012; 
GO 
 
-- Write a query using the Sales.SalesOrderHeader table that returns the count of unique TerritoryID values per customer. 
 

 SELECT COUNT(DISTINCT TerritoryID ) AS [UNIQUE TERRITORYID],CustomerID
 FROM Sales.SalesOrderHeader
 GROUP BY CustomerID
 ORDER BY CustomerID