CREATE OR ALTER PROCEDURE [dbo].[spui_ChangeDptPositionOrder] @DepartmentPositionsID int, @OrderID int
 AS
  BEGIN
   UPDATE DepartmentPositions
   SET OrderID = @OrderID
   WHERE DepartmentPositionsID=@DepartmentPositionsID
  END
GO



