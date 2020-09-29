/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Name]
  FROM [sample1].[dbo].[Table1identity]

  Insert into dbo.Table1identity Values('Rishav')

  SET IDENTITY_INSERT dbo.Table1identity ON

  Insert into dbo.Table1identity(ID,Name) Values(1,'rishav')