Use AdventureWorks2012; 
GO 
 
SELECT COUNT(*) AS CountOfRows,
     COUNT(SalesPersonID) AS CountOfSalesPeople,
     COUNT(DISTINCT SalesPersonID) AS CountOfUniqueSalesPeople
 FROM Sales.SalesOrderHeader; 