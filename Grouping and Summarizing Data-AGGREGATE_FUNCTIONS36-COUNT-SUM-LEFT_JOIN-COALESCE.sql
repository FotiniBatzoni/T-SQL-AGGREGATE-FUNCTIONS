Use AdventureWorks2012; 
GO 
 
 SELECT c.CustomerID, c.AccountNumber,
       COUNT(s.SalesOrderID) AS CountOfOrders,
       SUM(COALESCE(TotalDue,0)) AS SumOfTotalDue 
FROM Sales.Customer AS c 
LEFT OUTER JOIN Sales.SalesOrderHeader AS s 
	ON c.CustomerID = s.CustomerID 
GROUP BY c.CustomerID, c.AccountNumber
ORDER BY c.CustomerID; 