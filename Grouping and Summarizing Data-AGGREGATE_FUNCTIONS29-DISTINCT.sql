Use AdventureWorks2012; 
GO 
 
--1 
SELECT DISTINCT SalesOrderID 
FROM Sales.SalesOrderDetail; 

--2 
SELECT SalesOrderID 
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;