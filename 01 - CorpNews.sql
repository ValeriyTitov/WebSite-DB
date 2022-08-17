CREATE TABLE [dbo].[CorpNews](
	[CorpNewsID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Active] [bit] NOT NULL DEFAULT 1,
	[Text] [varchar](max) NULL,
	[ADate] [datetime] NOT NULL DEFAULT GETDATE(),
	[ValidThru] [datetime] NULL,
	[AlwaysValid] [bit] NULL DEFAULT (0),
	[ImagesID] [int] NULL,
	[RawHTML] [bit] NULL,
	[DisplayStyle] [int] NULL,
	[Caption] [varchar](32) NULL
 )

GO


