USE AdventureWorks2012;
GO

WITH Totals AS     
(
SELECT COUNT(*) AS CountOfSales,         
		SUM(TotalDue) AS SumOfTotalDue,         
		AVG(TotalDue) AS AvgOfTotalDue,         
CustomerID    
FROM Sales.SalesOrderHeader     
GROUP BY CustomerID
) 
SELECT c.CustomerID, CountOfSales,SumOfTotalDue, AvgOfTotalDue 
FROM Totals  
LEFT OUTER JOIN Sales.Customer AS c 
ON Totals.CustomerID = c.CustomerID 
ORDER BY CountOfSales DESC; 