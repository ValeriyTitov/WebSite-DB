CREATE OR ALTER PROCEDURE [dbo].[spui_DepartmentPostionList]
AS
BEGIN
 SELECT        DepartmentPositionsID, 
               Description, 
			   IsNull(OwnerID,0) as OwnerID, 
			   IsNull(ImageIndex,0) as ImageIndex, 
			   IsNull(OrderID,0) as OrderID, 
			   ItemType

 FROM          DepartmentPositions WITH (NOLOCK)
 ORDER BY      OrderID
END

GO
