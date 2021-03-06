Use AdventureWorks2012; 
GO 

SELECT CustomerID,     
		 (SELECT COUNT(*)
       FROM Sales.SalesOrderHeader
       WHERE CustomerID = C.CustomerID) AS CountOfSales,
	      (SELECT SUM(TotalDue)      
		  FROM Sales.SalesOrderHeader      
		  WHERE CustomerID = C.CustomerID) AS SumOfTotalDue,
		       (SELECT AVG(TotalDue)
			    FROM Sales.SalesOrderHeader
		        WHERE CustomerID = C.CustomerID) AS AvgOfTotalDue 
 FROM Sales.Customer AS C
 ORDER BY CountOfSales DESC; 