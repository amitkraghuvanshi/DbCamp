
USE master
GO
IF EXISTS (SELECT * FROM SysDatabases WHERE NAME='DBCamp')
  DROP DATABASE DBCamp
go


CREATE DATABASE DBCamp  
ON   
( NAME = DBCamp_dat,  
    FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBCampdat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = DBCamp_log,  
    FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBCamplog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
GO  

go

SET QUOTED_IDENTIFIER ON
go
USE DBCamp
go


CREATE TABLE dbo.Person (
  SSN NVARCHAR (12) NOT NULL PRIMARY KEY NONCLUSTERED,
  Title NVARCHAR (15) NULL,
  FirstName NVARCHAR (30) NOT NULL,
  MiddleName NVARCHAR (30) NULL,
  LastName NVARCHAR (30) NOT NULL,
  Email NVARCHAR (100) NOT NULL)
 
go 
