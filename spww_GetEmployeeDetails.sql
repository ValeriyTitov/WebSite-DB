CREATE OR ALTER PROCEDURE [dbo].[spww_GetEmployeeDetails] @EmployeesID int
AS
BEGIN
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
			  IsNULL(e.MessengerNumber,'<Отсутствует>') as [MessengerNumber]

FROM          Employees AS e WITH (NOLOCK)
              LEFT OUTER JOIN  DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
WHERE E.EmployeesID=@EmployeesID

	
END

GO


