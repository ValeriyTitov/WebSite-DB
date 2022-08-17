CREATE OR ALTER PROCEDURE [dbo].[spww_EmployeeList]
AS
BEGIN
SELECT        e.EmployeesID, 
              e.DepartmentPositionsID, 
			  e.ADate, 
			  e.FullName, 
              ep.Description, 
			  epd.Description as [DepDescription], 
			  ep.OwnerID, 
			  e.Gender,
              e.BirthDate, 
			  e.RoomNumber, 
			  e.Phone, 
			  e.MobilePhone, 
			  e.EMail, 
			  e.ImagesID
FROM          Employees AS e WITH (NOLOCK)
              LEFT JOIN DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
			  LEFT JOIN DepartmentPositions epd WITH (NOLOCK) ON epd.DepartmentPositionsID=ep.OwnerID
WHERE Active=1
ORDER BY --ep.OwnerID, e.DepartmentPositionsID, 
           e.FullName
END

GO
