USE AdventureWorks2012;
GO

SELECT SalesOrderID,SUM(UnitPrice) AS SumOfPrice,ProductID 
FROM Sales.SalesOrderDetail  
WHERE SalesOrderID BETWEEN 44175 AND 44180 
GROUP BY GROUPING SETS(SalesOrderID,ProductID);