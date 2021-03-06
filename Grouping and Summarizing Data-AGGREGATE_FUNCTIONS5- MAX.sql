USE AdventureWorks2012;
GO 

--Write a query to determine the price of the most expensive product ordered. 
--Use the UnitPrice column of the Sales.SalesOrderDetail table.

SELECT MAX (UnitPrice) AS [the most expensive product]
FROM Sales.SalesOrderDetail