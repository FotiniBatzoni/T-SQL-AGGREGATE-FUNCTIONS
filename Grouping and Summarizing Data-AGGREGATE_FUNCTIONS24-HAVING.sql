USE [AdventureWorks2012];
GO 

--Write a query that returns a count of detail lines in the Sales.SalesOrderDetail table by SalesOrderID. 
--Include only those sales that have more than three detail line




SELECT SALESORDERID,COUNT(OrderQty) AS [DETAIL LINE]
FROM Sales.SalesOrderDetail 
GROUP BY SalesOrderID,OrderQty
HAVING COUNT(OrderQty) BETWEEN 10 AND 20
ORDER BY COUNT(OrderQty)