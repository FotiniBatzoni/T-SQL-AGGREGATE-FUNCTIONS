USE AdventureWorks2012;
GO 

--Write a query that displays the count of orders placed by year for each customer using the Sales.SalesOrderHeader table. 
 


SELECT CustomerID ,COUNT(SalesOrderID) AS [count of orders],YEAR(OrderDate) AS YEAR

FROM Sales.SalesOrderHeader
GROUP BY  CustomerID,YEAR(OrderDate)
ORDER BY  CustomerID,YEAR(OrderDate)