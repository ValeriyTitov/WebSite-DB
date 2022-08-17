CREATE OR ALTER PROCEDURE [dbo].[spui_SetEmployeeActivity] @EmployeesID int, @Active bit
AS
BEGIN
 UPDATE Employees
 SET Active = @Active
 WHERE EmployeesID=@EmployeesID
END

GO



