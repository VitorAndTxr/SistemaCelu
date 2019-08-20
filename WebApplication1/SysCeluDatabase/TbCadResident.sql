CREATE TABLE [dbo].[TbCadResident]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [TbCadPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [NumLaundry] INT NOT NULL, 
    [Dpto] NVARCHAR(50) NOT NULL, 
    [ResidentStatus] INT NOT NULL, 
    [ChamadaAtencao] INT NOT NULL DEFAULT 0, 
    [EntradaCelu] DATETIME NOT NULL, 
    [Curso] INT NOT NULL, 
    [University] INT NOT NULL, 
    [Room] INT NOT NULL, 
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL, 
	[CreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedBy] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NULL DEFAULT getdate(), 
	[Active] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_TbCadResident_TbCadPerson] FOREIGN KEY ([TbCadPersonId]) REFERENCES [TbCadPerson]([Id]), 
    CONSTRAINT [FK_TbCadResident_TbUsrUser] FOREIGN KEY ([CreatedBy]) REFERENCES [TbUsrUser]([Id]), 
    CONSTRAINT [FK_TbCadResident_TbUsrUser] FOREIGN KEY ([ModifiedBy]) REFERENCES [TbUsrUser]([Id])
)
