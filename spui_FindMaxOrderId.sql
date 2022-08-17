CREATE OR ALTER PROCEDURE [dbo].[spui_FindMaxOrderId]
AS
BEGIN
 SELECT MAX(OrderID)+1 as MaxOrderId
 FROM DepartmentPositions

END

GO



