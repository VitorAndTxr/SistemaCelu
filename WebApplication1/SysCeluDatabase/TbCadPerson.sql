﻿CREATE TABLE [dbo].[TbCadPerson]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [DocNumber] NVARCHAR(MAX) NOT NULL, 
    [DocType] INT NOT NULL, 
    [MotherName] NVARCHAR(MAX) NULL DEFAULT NULL, 
    [FatherName] NVARCHAR(MAX) NULL DEFAULT NULL, 
    [Phone] NVARCHAR(50) NULL DEFAULT NULL, 
    [Cel] NVARCHAR(50) NULL DEFAULT NULL, 
    [Email] NVARCHAR(MAX) NULL DEFAULT NULL, 
    [BloodType] INT NULL DEFAULT NULL, 
    [EmergencePhone] NVARCHAR(50) NULL DEFAULT NULL, 
    [BirthDate] DATETIME NOT NULL, 
    [City] NVARCHAR(MAX) NOT NULL, 
    [Adress] NVARCHAR(MAX) NOT NULL, 
    [Country] INT NOT NULL, 
    [Gender] INT NOT NULL, 
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL, 
	[CreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedBy] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [Active] BIT NOT NULL DEFAULT 1,
	CONSTRAINT [FK_TbCadPerson_TbUsrUser] FOREIGN KEY ([CreatedBy]) REFERENCES [TbUsrUser]([Id]), 
    CONSTRAINT [FK_TbCadPerson_TbUsrUser] FOREIGN KEY ([ModifiedBy]) REFERENCES [TbUsrUser]([Id])
)
