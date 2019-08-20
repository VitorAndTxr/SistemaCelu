CREATE TABLE [dbo].[TbCadResident]
(
	[Active] BIT NOT NULL DEFAULT 1, 
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [TbCadPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [NumLaundry] INT NOT NULL, 
    [Dpto] NVARCHAR(50) NOT NULL, 
    [ResidentStatus] INT NOT NULL, 
    [ChamadaAtencao] INT NOT NULL DEFAULT 0, 
    [EntradaCelu] DATETIME NOT NULL, 
    [Curso] INT NOT NULL, 
    [University] INT NOT NULL, 
    [Room] INT NOT NULL, 
    [CreatedById] UNIQUEIDENTIFIER NOT NULL, 
	[CreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedById] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NULL DEFAULT getdate(), 
    CONSTRAINT [FK_TbCadResident_TbCadPerson] FOREIGN KEY ([TbCadPersonId]) REFERENCES [TbCadPerson]([Id]), 
    CONSTRAINT [FK_TbCadResident_TbUsrUser] FOREIGN KEY ([CreatedById]) REFERENCES [TbUsrUser]([Id]), 
    CONSTRAINT [FK_TbCadResident_TbUsrUser] FOREIGN KEY ([ModifiedById]) REFERENCES [TbUsrUser]([Id])
)
