CREATE TABLE [dbo].[TbCadGuest]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [Cama] INT NOT NULL, 
    [CheckIn] DATETIME NOT NULL DEFAULT getdate(), 
    [CheckOut] DATETIME NOT NULL, 
    [TbCadPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedBy] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [Active] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_TbCadGuest_TbCadPerson] FOREIGN KEY ([TbCadPersonId]) REFERENCES [TbCadPerson]([Id])
)
