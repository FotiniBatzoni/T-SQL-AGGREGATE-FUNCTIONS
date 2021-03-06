Use AdventureWorks2012; 
GO 

SELECT CustomerID
FROM Sales.Customer AS c
WHERE CustomerID > 
    (     SELECT SUM(TotalDue)    
	 FROM Sales.SalesOrderHeader
     WHERE CustomerID = c.CustomerID); 