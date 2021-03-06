USE AdventureWorks2012;
GO 

--Write a query using the Sales.SalesOrderDetail table that displays a count of the detail lines???? for each SalesOrderID


SELECT SalesOrderID,COUNT(OrderQty) AS [TOTAL NUMBER OF ITEMS]
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY SalesOrderID