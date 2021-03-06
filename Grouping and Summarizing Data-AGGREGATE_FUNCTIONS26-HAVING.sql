USE [AdventureWorks2012];
GO 


--Write a query that groups the products by ProductModelID along with a count. 
--Display the rows that have a count that equals 1

SELECT ProductModelID,COUNT(*)
FROM PRODUCTION.PRODUCT
GROUP BY ProductModelID
HAVING COUNT(*)=1
ORDER BY ProductModelID