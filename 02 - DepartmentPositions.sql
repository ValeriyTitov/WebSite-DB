CREATE TABLE [dbo].[DepartmentPositions](
	[DepartmentPositionsId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Description] [varchar](200) NULL,
	[OwnerID] [int] NULL,
	[ImageIndex] [int] NULL,
	[OrderID] [int] NULL,
	[ItemType] [int] NOT NULL DEFAULT 0,
	[IsBoss] [bit] NULL
)

