USE AdventureWorks2012;
GO

SELECT COUNT(*) AS CountOfRows, Color,   
	   ISNULL(Size,CASE WHEN GROUPING(Size) = 0 THEN 'UNK' ELSE 'ALL' END) AS Size 
FROM Production.Product 
GROUP BY ROLLUP(Color,Size) 
ORDER BY Size; 