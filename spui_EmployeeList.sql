CREATE OR ALTER PROCEDURE [dbo].[spui_EmployeeList] @OnlyActive bit = 0
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
			  e.ImagesID, 
			  e.Active,
			  e.MessengerNumber,
			  e.StateEmployee,
			  CASE 
			   WHEN I.ImagesID IS NOT NULL THEN 1
			   ELSE 0
			  END as HasPhoto
              

FROM          Employees AS e WITH (NOLOCK)
              LEFT JOIN DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID 
			  LEFT JOIN DepartmentPositions epd WITH (NOLOCK) on epd.DepartmentPositionsID=ep.OwnerID
			  LEFT JOIN Images I WITH (NOLOCK) ON e.ImagesID=I.ImagesID AND I.Data IS NOT NULL
			  WHERE (Active = 1) OR (@OnlyActive=0)
ORDER BY ep.OwnerID

END

GO



