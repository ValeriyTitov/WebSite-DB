CREATE OR ALTER PROCEDURE [dbo].[spww_BirthdaysNextWeek] @ADate date --Что бы кэшировался 1 раз в день на клиенте.
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
			  dpe.Description as DepDescription, ep.OwnerID

FROM          Employees AS e WITH (NOLOCK)
              LEFT OUTER JOIN DepartmentPositions AS ep WITH (NOLOCK) ON e.DepartmentPositionsID = ep.DepartmentPositionsID
			  INNER JOIN DepartmentPositions dpe WITH (NOLOCK) ON ep.OwnerID=dpe.DepartmentPositionsID

WHERE     ((FLOOR(DATEDIFF(dd,BirthDate,GETDATE()+14) / 365.25))-(FLOOR(DATEDIFF(dd,BirthDate,GETDATE()) / 365.25))=1)
		  AND Active=1
ORDER BY MONTH(BirthDate), DAY(BirthDate)
END

GO


