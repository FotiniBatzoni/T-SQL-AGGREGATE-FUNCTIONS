Use AdventureWorks2012; 
GO 

 SELECT c.CustomerID,CountOfSales,
      SumOfTotalDue, AvgOfTotalDue 
	  FROM Sales.Customer AS c 
INNER JOIN
     (SELECT CustomerID, COUNT(*) AS CountOfSales, 
                         SUM(TotalDue) AS SumOfTotalDue,
                         AVG(TotalDue) AS AvgOfTotalDue
	  FROM Sales.SalesOrderHeader 
	  GROUP BY CustomerID) AS s
ON c.CustomerID = s.CustomerID; 