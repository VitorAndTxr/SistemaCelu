﻿CREATE TABLE [dbo].[TbCadGuest]
(
    [Active] BIT NOT NULL DEFAULT 1, 
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [Cama] INT NOT NULL, 
    [CheckIn] DATETIME NOT NULL DEFAULT getdate(), 
    [CheckOut] DATETIME NOT NULL, 
    [TbCadPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedById] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedBy] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDateId] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedDate] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_TbCadGuest_TbCadPerson] FOREIGN KEY ([TbCadPersonId]) REFERENCES [TbCadPerson]([Id])
)
