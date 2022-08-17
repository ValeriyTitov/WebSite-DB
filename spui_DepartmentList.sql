CREATE OR ALTER PROCEDURE [dbo].[spui_DepartmentList]
AS
BEGIN
 SELECT DepartmentPositionsID as Value, 
        Description, 
		IsNull(OwnerID,0) as OwnerID, 
		IsNull(ImageIndex,0) as ImageIndex, 
		IsNull(OrderID,0) as OrderID, 
		ItemType
 FROM   DepartmentPositions WITH (NOLOCK)
 WHERE ItemType = 1
END

GO
