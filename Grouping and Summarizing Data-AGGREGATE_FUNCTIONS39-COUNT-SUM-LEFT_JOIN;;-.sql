Use AdventureWorks2012; 
GO 
 
--Write a query using the Sales.SalesOrderHeader, Sales.SalesOrderDetail, and Production.Product tables
-- to display the total sum of products by ProductID and OrderDate.


SELECT SUM(DISTINCT ProductID)AS SUM,OrderDate
FROM Sales.SalesOrderDetail AS SOD
RIGHT JOIN Sales.SalesOrderHeader AS SOH
ON SOD.SalesOrderID=SOH.SalesOrderID
GROUP BY OrderDate
ORDER BY SUM