CREATE TABLE [dbo].[SiteDocuments](
	[SiteDocumentsId] [int] IDENTITY(1,1) PRIMARY KEY,
	[OwnerID] [int] NULL,
	[IsGroup] [bit] NOT NULL,
	[Data] [varbinary](max) NULL,
	[Description] [varchar](80) NULL,
	[Tags] [varchar](80) NULL,
	[FileName] [varchar](80) NULL,
	[AUser] [varchar](32) NULL DEFAULT SUSER_SNAME(),
	[ADate] [datetime] NULL DEFAULT GETDATE(),
	[ImageIndex] [int] NULL,
	[ShowInDocuments] [bit] NULL
)

GO



