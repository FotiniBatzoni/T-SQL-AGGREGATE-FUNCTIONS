Use AdventureWorks2012; 
GO 

-- Write a query that joins the HumanResources.Employee table to the Person.Person table 
--so that you can display the FirstName, LastName, and HireDate columns for each employee.
-- Display the JobTitle along with a count of employees for the title. 
--Rewrite the query from question 1 using a CTE. 

WITH E AS 
    (SELECT BusinessEntityID, HIREDATE,JOBTITLE,
	 COUNT( BusinessEntityID) OVER (PARTITION BY JOBTITLE) AS COUNT
	    FROM HumanResources.Employee
		GROUP BY JobTitle,HireDate,BusinessEntityID )
SELECT P.FIRSTNAME,P.LASTNAME,E.HireDate,E.JobTitle,E.COUNT
FROM Person.Person AS P
  JOIN E 
ON P.BusinessEntityID= E.BusinessEntityID
