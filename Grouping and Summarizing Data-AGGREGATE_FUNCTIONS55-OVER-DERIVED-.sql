Use AdventureWorks2012; 
GO 

-- Display the CustomerID, SalesOrderID, and OrderDate for each Sales.SalesOrderHeader row
-- as long as the customer has placed at least five orders. 
--Use any of the techniques from this section to come up with the query


SELECT SOH.CustomerID, SOH.SalesOrderID, OrderDate,ORDERS
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN
(SELECT CustomerID, SalesOrderID,COUNT(SALESORDERID) OVER (PARTITION BY CUSTOMERID) AS ORDERS
FROM Sales.SalesOrderHeader
GROUP BY SalesOrderID,CustomerID) AS C
ON C.CustomerID=SOH.CustomerID
WHERE ORDERS > 5
ORDER BY ORDERS