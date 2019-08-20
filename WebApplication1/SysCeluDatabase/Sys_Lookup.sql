CREATE TABLE [dbo].[Sys_Lookup]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(), 
    [Grupo] NVARCHAR(MAX) NOT NULL, 
    [key] INT NOT NULL, 
    [Value] TEXT NOT NULL, 
    CONSTRAINT [AK_Sys_Lookup_Column] UNIQUE ([Grupo], [key])
)
