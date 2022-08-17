CREATE TABLE [dbo].[WebPages](
	[WebPagesId] [int] IDENTITY(1,1) PRIMARY KEY,
	[Caption] [varchar](80) NULL,
	[Description] [varchar](1024) NULL,
	[Data] [varchar](max) NULL,
	[DateCreate] [date] NULL
	)

GO



