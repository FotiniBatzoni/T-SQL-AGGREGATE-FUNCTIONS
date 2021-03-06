Use AdventureWorks2012; 
GO 
 
SELECT c.CustomerID, c.AccountNumber,
       COUNT(*) AS CountOfOrders,
       SUM(TotalDue) AS SumOfTotalDue
FROM Sales.Customer AS C
LEFT JOIN Sales.SalesOrderHeader AS s 
ON c.CustomerID = s.CustomerID
GROUP BY c.CustomerID, c.AccountNumber
ORDER BY c.CustomerID