CREATE OR ALTER PROCEDURE [dbo].[spww_EmployeeSearch] @FullName varchar(255)
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
			  dpe.Description as DepDescription, 
			  ep.OwnerID

              

FROM          Employees AS e WITH (NOLOCK)
              LEFT OUTER JOIN DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
			  INNER JOIN DepartmentPositions dpe WITH (NOLOCK) on ep.OwnerID=dpe.DepartmentPositionsID

WHERE e.FullName like '%'+@FullName+'%'
AND Active=1
--ORDER BY OwnerID, ep.OrderID

END

GO


