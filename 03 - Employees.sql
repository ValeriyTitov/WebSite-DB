CREATE TABLE [dbo].[Employees](
	[EmployeesId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[DepartmentPositionsId] [int] NULL FOREIGN KEY (DepartmentPositionsId) REFERENCES DepartmentPositions(DepartmentPositionsId) INDEX idx_DepartmentPositionsId,
	[OrderID] [int] NOT NULL DEFAULT 0,
	[Active] [bit] NOT NULL DEFAULT 1,
	[ADate] [datetime] NOT NULL DEFAULT GETDATE(),
	[FullName] [varchar](255) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[RoomNumber] [varchar](32) NULL,
	[Phone] [varchar](32) NULL,
	[MobilePhone] [varchar](32) NULL,
	[EMail] [varchar](32) NULL,
	[ImagesID] [int] NULL,
	[ShowBirthday] [bit] NOT NULL DEFAULT 1,
	[StateEmployee] [bit] NULL DEFAULT 1,
	[MessengerNumber] [varchar](32) NULL
 )

GO


