USE AdventureWorks2012;
GO


 SELECT CustomerID, TotalDue,      
 TotalDue / SUM(TotalDue) OVER(PARTITION BY CustomerID) * 100      AS PercentOfCustSales,     
 TotalDue / SUM(TotalDue) OVER(PARTITION BY TerritoryID) * 100      AS PercentOfTerrSales 
 FROM Sales.SalesOrderHeader 
 ORDER BY CustomerID; 