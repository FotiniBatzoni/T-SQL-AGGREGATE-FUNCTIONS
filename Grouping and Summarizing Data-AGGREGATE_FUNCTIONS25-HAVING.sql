USE [AdventureWorks2012];
GO 


--Write a query that creates a sum of the LineTotal in the Sales.SalesOrderDetail table grouped by the SalesOrderID. 
--Include only those rows where the sum exceeds 1,000.

SELECT SalesOrderID,SUM(LineTotal) AS [SUM TOTAL]
FROM  Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal)>1000
ORDER BY SUM(LineTotal) DESC