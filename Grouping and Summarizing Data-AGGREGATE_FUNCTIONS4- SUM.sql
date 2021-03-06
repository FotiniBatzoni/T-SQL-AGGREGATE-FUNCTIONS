USE AdventureWorks2012;
GO 

--Write a query that lists the total number of products ordered.
--Use the OrderQty column of the Sales.SalesOrderDetail table and the SUM function. 


SELECT SUM(OrderQty) AS [total number of products]
FROM Sales.SalesOrderDetail
