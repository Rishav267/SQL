/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Gender]
  FROM [sample1].[dbo].[tbGender]

  Select * from sys.databases
  Select * from sample1.dbo.identityperson
  Select sysdatetime()

  SELECT CONVERT (time, SYSDATETIME())  
    ,CONVERT (time, SYSDATETIMEOFFSET())  
    ,CONVERT (time, SYSUTCDATETIME())  
    ,CONVERT (time, CURRENT_TIMESTAMP)  
    ,CONVERT (time, GETDATE())  
    ,CONVERT (time, GETUTCDATE());

	select GETDATE()

	SELECT DATABASEPROPERTYEX('sample1', 'IsAutoShrink'); 