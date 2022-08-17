CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteDepartmentPosition] @IDs varchar(MAX)
AS
BEGIN
SET XACT_ABORT ON
 declare 
 @ACount int = 0;
 SELECT @ACount= COUNT(1) 
 FROM Employees e WITH(NOLOCK)
 WHERE e.DepartmentPositionsID in 
  (SELECT ID FROM fn_SepNumAsTable(@IDs))

IF @ACount>0 
BEGIN
   RAISERROR ('Удалить должность невозможно. Некоторые сотрудники её занимают.', -- Message text.  
           15, -- Severity,  
           25, -- State,  
           N'abcde'); -- First argument supplies the string.  
   RETURN
END

DELETE DepartmentPositions
WHERE DepartmentPositionsID in 
 (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
