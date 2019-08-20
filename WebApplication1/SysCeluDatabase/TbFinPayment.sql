CREATE TABLE [dbo].[TbFinPayment]
(
    [Active] BIT NOT NULL DEFAULT 1,
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [TbCadPersonId] UNIQUEIDENTIFIER NOT NULL, 
    [Value] MONEY NOT NULL, 
	[Regarding] INT NOT NULL DEFAULT 1, 
    [PaymentForm] INT NOT NULL, 
    [Obs] TEXT NOT NULL DEFAULT 'Sem Observações', 
    [CreatedById] UNIQUEIDENTIFIER NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT getdate(), 
    [ModifiedById] UNIQUEIDENTIFIER NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_TbFinPayment_TbCadPerson] FOREIGN KEY ([TbCadPersonId]) REFERENCES [TbCadPerson]([Id]), 
    CONSTRAINT [FK_TbFinPayment_TbUsrUser] FOREIGN KEY ([CreatedById]) REFERENCES [TbUsrUser]([Id]),
	CONSTRAINT [FK_TbFinPayment_TbUsrUser] FOREIGN KEY ([ModifiedById]) REFERENCES [TbUsrUser]([Id])
)
