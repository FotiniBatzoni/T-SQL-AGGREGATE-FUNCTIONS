Use AdventureWorks2012; 
GO 

-- Write a query that joins the HumanResources.Employee table to the Person.Person table 
--so that you can display the FirstName, LastName, and HireDate columns for each employee.
-- Display the JobTitle along with a count of employees for the title. Use a derived table to solve this query

SELECT P.FIRSTNAME,P.LASTNAME,E.HireDate,E.JobTitle,E.COUNT
FROM Person.Person AS P
  JOIN 
     (SELECT BusinessEntityID, HIREDATE,JOBTITLE,
	 COUNT( BusinessEntityID) OVER (PARTITION BY JOBTITLE) AS COUNT
	    FROM HumanResources.Employee
		GROUP BY JobTitle,HireDate,BusinessEntityID ) AS E
ON P.BusinessEntityID= E.BusinessEntityID