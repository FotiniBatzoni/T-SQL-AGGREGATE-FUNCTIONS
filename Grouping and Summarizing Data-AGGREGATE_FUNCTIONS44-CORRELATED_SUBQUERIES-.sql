Use AdventureWorks2012; 
GO 

SELECT CustomerID, SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader AS soh
WHERE 10000 < 
	     (SELECT SUM(TotalDue)
		  FROM Sales.SalesOrderHeader
          WHERE CustomerID = soh.CustomerID)
ORDER BY TotalDue DESC