USE AdventureWorks2012;
GO

WITH SumSale AS     
(SELECT SUM(TotalDue) AS SumTotalDue,CustomerID     
FROM Sales.SalesOrderHeader     
GROUP BY CustomerID) 
SELECT o.CustomerID, TotalDue,     
 TotalDue / SumTotalDue * 100 AS PercentOfSales 
 FROM SumSale 
 INNER JOIN Sales.SalesOrderHeader AS o 
 ON SumSale.CustomerID = o.CustomerID 
ORDER BY CustomerID; 