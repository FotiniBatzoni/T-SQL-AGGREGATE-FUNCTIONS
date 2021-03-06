USE AdventureWorks2012;
GO 

SELECT TerritoryID,AVG(TotalDue) AS AveragePerTerritory
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
ORDER BY TerritoryID