Use AdventureWorks2012; 
GO 

WITH s AS
      (SELECT CustomerID, COUNT(*) AS CountOfSales,         
						  SUM(TotalDue) AS SumOfTotalDue,         
						  AVG(TotalDue) AS AvgOfTotalDue 
      FROM Sales.SalesOrderHeader     
	  GROUP BY CustomerID) 
 SELECT c.CustomerID,CountOfSales, SumOfTotalDue, AvgOfTotalDue 
 FROM Sales.Customer AS c
INNER JOIN s 
ON c.CustomerID = s.CustomerID; 