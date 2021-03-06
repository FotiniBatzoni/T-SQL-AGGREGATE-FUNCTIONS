USE AdventureWorks2012;
GO

SELECT CustomerID,      
  (SELECT COUNT(*) AS CountOfSales      
 FROM Sales.SalesOrderHeader       
 WHERE CustomerID = c.CustomerID) AS CountOfSales,     
 (SELECT SUM(TotalDue)      
 FROM Sales.SalesOrderHeader      
 WHERE CustomerID = c.CustomerID) AS SumOfTotalDue,     
 (SELECT AVG(TotalDue)      
 FROM Sales.SalesOrderHeader      
 WHERE CustomerID = c.CustomerID) AS AvgOfTotalDue 
 FROM Sales.Customer AS c 
 ORDER BY CountOfSales DESC;  
 