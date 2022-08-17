CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteEmployee] @IDs varchar(MAX)
AS
BEGIN
 DELETE Employees
 WHERE EmployeesID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
