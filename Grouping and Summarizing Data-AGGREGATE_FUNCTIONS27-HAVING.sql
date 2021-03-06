USE [AdventureWorks2012];
GO 


--Write a query that groups the products by ProductModelID along with a count. 
--Display the rows that have a count that equals 1

SELECT ProductID, ProductModelID,COUNT(ProductModelID)
FROM PRODUCTION.PRODUCT
WHERE ProductModelID IS NOT NULL
GROUP BY ProductModelID,ProductID
HAVING COUNT(*)=1
ORDER BY ProductModelID