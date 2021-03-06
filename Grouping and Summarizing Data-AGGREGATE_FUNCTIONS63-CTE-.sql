USE AdventureWorks2012;
GO

WITH SumSale AS    
(SELECT SUM(TotalDue) AS SumTotalDue, CustomerID     
FROM Sales.SalesOrderHeader     
GROUP BY CustomerID),  TerrSales AS     
(SELECT SUM(TotalDue) AS SumTerritoryTotalDue, TerritoryID      
FROM Sales.SalesOrderHeader      
GROUP BY TerritoryID )
 SELECT o.CustomerID, TotalDue,      
 TotalDue / SumTotalDue * 100 AS PercentOfCustSales,     
 TotalDue / SumTerritoryTotalDue * 100 AS PercentOfTerrSales 
 FROM SumSale  
 INNER JOIN Sales.SalesOrderHeader AS o 
 ON SumSale.CustomerID = o.CustomerID 
 INNER JOIN TerrSales 
 ON TerrSales.TerritoryID = o.TerritoryID  
 ORDER BY CustomerID; 
 