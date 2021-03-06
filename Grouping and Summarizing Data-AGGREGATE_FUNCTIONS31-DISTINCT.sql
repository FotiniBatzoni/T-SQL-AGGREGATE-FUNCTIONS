Use AdventureWorks2012; 
GO 
 
SELECT SUM(TotalDue) AS TotalOfAllOrders,
      SUM(Distinct TotalDue) AS TotalOfDistinctTotalDue
FROM Sales.SalesOrderHeader