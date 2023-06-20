CREATE OR ALTER PROCEDURE [dbo].[spww_EmployeeAgileGroupList] @EmployeesID int
AS
BEGIN
SELECT
       D.AgileGroupsDetailsId, 
	   D.AgileGroupsId, 
	   D.EmployeesId, 
	   A.GroupName
FROM AgileGroupsDetails D WITH (NOLOCK)
INNER JOIN AgileGroups A WITH (NOLOCK) ON A.AgileGroupsId=D.AgileGroupsId
WHERE D.EmployeesId= @EmployeesID
	
END