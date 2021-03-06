USE [AdventureWorks2012];
GO 


--Write a query that groups the products by ProductModelID along with a count. 
--Display the rows that have a count that equals 1
--Change the query in question 3 so that only the products with the color blue or red are included.


SELECT ProductID, ProductModelID,COUNT(ProductModelID),Color
FROM PRODUCTION.PRODUCT
WHERE ProductModelID IS NOT NULL AND Color= 'RED' OR Color = 'BLUE'
GROUP BY ProductModelID,ProductID,Color
HAVING COUNT(*)=1
ORDER BY Color