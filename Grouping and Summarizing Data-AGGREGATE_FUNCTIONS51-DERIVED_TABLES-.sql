Use AdventureWorks2012; 
GO 

SELECT CustomerID, SalesOrderID, TotalDue,
     AVG(TotalDue) OVER(PARTITION BY CustomerID) AS AvgOfTotalDue,
	 SUM(TotalDue) OVER(PARTITION BY CustomerID) AS SumOfTOtalDue,
	 TotalDue/(SUM(TotalDue) OVER(PARTITION BY CustomerID)) * 100  AS SalePercentPerCustomer,
     SUM(TotalDue) OVER() AS SalesOverAll
FROM Sales.SalesOrderHeader 
ORDER BY CustomerID; 