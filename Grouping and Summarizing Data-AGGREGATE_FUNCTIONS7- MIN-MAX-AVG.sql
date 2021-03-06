USE AdventureWorks2012;
GO 


--Write a query using the Production.Product table that displays the minimum, maximum, and average ListPric


SELECT MIN(ListPrice) AS [MIN LIST PRICE],
	   MAX(ListPrice) AS [MAX LIST PRICE],
	   AVG( ListPrice) AS [AVG LIST PRICE]
FROM Production.Product