USE AdventureWorks2012;
GO 

--Write a query using the Production.Product table that lists a count of the products in each product line


SELECT ProductLine,COUNT(ProductID) AS [count of the products in each product line]
FROM Production.Product
GROUP BY  ProductLine
ORDER BY  ProductLine