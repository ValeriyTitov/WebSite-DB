CREATE TABLE [dbo].[Images](
	[ImagesId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Data] [varbinary](max) NULL,
	[Description] [varchar](80) NULL,
	[FileName] [varchar](80) NULL,
	[AUser] [varchar](32) NULL DEFAULT SUSER_SNAME(),
	[ADate] [datetime] NULL DEFAULT GETDATE()
 )
 
GO


