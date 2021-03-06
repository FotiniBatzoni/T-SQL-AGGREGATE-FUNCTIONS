USE AdventureWorks2012;
GO 

 SELECT COUNT(*) AS CountOfOrders, 
		YEAR(OrderDate) AS OrderYear 
FROM Sales.SalesOrderHeader 
GROUP BY YEAR(OrderDate); 