USE AdventureWorks2012;
GO

SELECT NULL AS SalesOrderID,SUM(UnitPrice)AS SumOfPrice,ProductID
FROM Sales.SalesOrderDetail
WHERE SalesOrderID BETWEEN 44175 AND 44180 
GROUP BY ProductID 
UNION 
SELECT SalesOrderID,SUM(UnitPrice), NULL  
FROM Sales.SalesOrderDetail 
WHERE SalesOrderID BETWEEN 44175 AND 44180 
GROUP BY SalesOrderID; 
 