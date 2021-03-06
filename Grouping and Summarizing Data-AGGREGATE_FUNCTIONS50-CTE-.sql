Use AdventureWorks2012; 
GO 

WITH C AS
      (SELECT CustomerID,  SUM(TotalDue) AS SumOfTotalDue,         
						  AVG(TotalDue) AS AvgOfTotalDue 
      FROM Sales.SalesOrderHeader     
	  GROUP BY CustomerID) 
 SELECT c.CustomerID,SALESORDERID,TOTALDUE,TOTALDUE/ SumOfTotalDue*100 AS SALEPERCENT, AvgOfTotalDue 
 FROM Sales.SalesOrderHeader AS SOH
INNER JOIN C 
ON c.CustomerID = SOH.CustomerID; 