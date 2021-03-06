Use AdventureWorks2012; 
GO 

SELECT CustomerID,     
		 (SELECT COUNT(*)
       FROM Sales.SalesOrderHeader
       WHERE CustomerID = C.CustomerID) AS CountOfSales
 FROM Sales.Customer AS C
 ORDER BY CountOfSales DESC; 