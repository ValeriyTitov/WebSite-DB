CREATE TABLE [dbo].[IncomingWebMessages](
	[IncomingWebMessagesId] [int] IDENTITY(1,1) PRIMARY KEY,
	[UserName] [varchar](80) NOT NULL,
	[ContactEmail] [varchar](32) NOT NULL,
	[ContactPhone] [varchar](32) NULL,
	[Message] [varchar](255) NOT NULL,
	[SubmiterIPAdress] [varchar](32) NULL,
	[Readed] [bit] NOT NULL DEFAULT 0,
	[ADate] [datetime] NOT NULL DEFAULT GETDATE(),
	[SystemMessage] [bit] NOT NULL DEFAULT 0,
)

GO



