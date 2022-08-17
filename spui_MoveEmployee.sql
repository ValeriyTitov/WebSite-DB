CREATE OR ALTER PROCEDURE [dbo].[spui_MoveEmployee] @EmployeesID int, @DepartmentPositionsID int
AS
 BEGIN
  UPDATE Employees
  SET DepartmentPositionsID = @DepartmentPositionsID
  WHERE EmployeesID=@EmployeesID
 END

GO


