Use AdventureWorks2012; 
GO 
 
--Write a query using the Sales.SalesOrderHeader, Sales.SalesOrderDetail, and Production.Product tables
-- to display the total sum of products by ProductID and OrderDate.


SELECT SOH.OrderDate,
      SUM(DISTINCT SOD.ProductID) AS [SUM OF PRODUCTS]
FROM Production.Product AS P
RIGHT JOIN Sales.SalesOrderDetail AS SOD
ON P.ProductID=SOD.ProductID
LEFT JOIN Sales.SalesOrderHeader AS SOH
ON SOH.SalesOrderID=SOD.SalesOrderID
GROUP BY SOH.OrderDate,P.ProductID
ORDER BY [SUM OF PRODUCTS]