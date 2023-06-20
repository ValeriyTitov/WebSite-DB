CREATE OR ALTER PROCEDURE [dbo].[spww_GetEmployeeDetails] @EmployeesID int
AS
BEGIN

DECLARE @AgileGroupCount int;

SELECT @AgileGroupCount = COUNT(1)
FROM AgileGroupsDetails A WITH(NOLOCK)
WHERE A.EmployeesId=@EmployeesID



SELECT        e.EmployeesID, 
              e.DepartmentPositionsID, 
			  e.ADate, 
			  e.FullName, 
			  ep.Description, 
			  e.Gender,
              e.BirthDate, 
			  e.RoomNumber, 
			  e.Phone, 
			  e.MobilePhone, 
			  e.EMail, 
			  e.ImagesID,
			  @AgileGroupCount as AgileGroupCount,
			  IsNULL(e.MessengerNumber,'<Žòñóòñòâóåò>') as [MessengerNumber]

              

FROM          Employees AS e WITH (NOLOCK)
              LEFT JOIN  DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
WHERE E.EmployeesID=@EmployeesID

	
END

GO

