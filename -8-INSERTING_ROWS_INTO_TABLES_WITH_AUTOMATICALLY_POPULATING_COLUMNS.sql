USE AdventureWorks2012;
GO


 IF  EXISTS (SELECT * FROM sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[demoAutoPopulate]')
			  AND type in (N'U')) 
DROP TABLE [dbo].[demoAutoPopulate]; 
 
IF  EXISTS (SELECT * FROM sys.objects
             WHERE object_id = OBJECT_ID(N'[dbo].[demoSequence]')) 
DROP SEQUENCE [dbo].[demoSequence]; 
 


CREATE SEQUENCE dbo.demoSequence AS INT 
START WITH 1 
INCREMENT BY 1; 
 
CREATE TABLE [dbo].[demoAutoPopulate](     
 [RegularColumn] [NVARCHAR](50) NOT NULL PRIMARY KEY,      
 [IdentityColumn] [INT] IDENTITY(1,1) NOT NULL,      
 [RowversionColumn] [ROWVERSION] NOT NULL,      
 [SequenceColumn] [INT] NOT NULL,     
  [ComputedColumn] AS ([RegularColumn]+CONVERT([NVARCHAR],      
  [IdentityColumn],(0))) PERSISTED)
 GO 
 
--1 
INSERT INTO dbo.demoAutoPopulate (RegularColumn, SequenceColumn)
 VALUES ('a', NEXT VALUE FOR dbo.demoSequence), 
		('b', NEXT VALUE FOR dbo.demoSequence),  
		('c', NEXT VALUE FOR dbo.demoSequence); 
 

--2
SELECT RegularColumn, IdentityColumn, RowversionColumn, SequenceColumn, ComputedColumn 
FROM demoAutoPopulate;