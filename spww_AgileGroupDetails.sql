CREATE OR ALTER PROCEDURE [dbo].spww_AgileGroupDetails @AgileGroupsId INT
AS
BEGIN
SELECT        A.AgileGroupsDetailsId,
              G.UserDescription,
			  G.GroupName,
              e.EmployeesID, 
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

              

FROM          AgileGroupsDetails A WITH (NOLOCK)
              INNER JOIN Employees AS E WITH (NOLOCK) ON E.EmployeesID=A.EmployeesId
			  INNER JOIN AgileGroups G WITH (NOLOCK) ON G.AgileGroupsId=A.AgileGroupsId 
              LEFT JOIN DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
			  INNER JOIN DepartmentPositions dpe WITH (NOLOCK) on ep.OwnerID=dpe.DepartmentPositionsID

WHERE E.Active=1 AND A.AgileGroupsId=@AgileGroupsId
ORDER BY A.OrderId
END

