Use AdventureWorks2012; 
GO 
 
--Write a query joining the Person.Person, Sales.Customer, and Sales.SalesOrderHeader tables 
--to return a list of the customer names along with a count of the orders placed. 


SELECT C.CustomerID,P.LastName,COUNT(SOH.SalesOrderID) AS [COUNT OF THE ORDER]
FROM PERSON.PERSON AS P
 JOIN SALES.CUSTOMER AS C
ON P.BUSINESSENTITYID=C.CUSTOMERID
LEFT JOIN Sales.SalesOrderHeader AS SOH
ON C.CustomerID=SOH.CustomerID
GROUP BY C.CustomerID,P.LastName
ORDER BY C.CustomerID