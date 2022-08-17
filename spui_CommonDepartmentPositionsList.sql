CREATE OR ALTER PROCEDURE [dbo].[spui_CommonDepartmentPositionsList] @Description varchar(200) = '', @ItemType int = 0
AS
BEGIN
 SELECT distinct top 5 D.Description
 FROM DepartmentPositions D WITH (NOLOCK)
 WHERE (D.ItemType=@ItemType) and (D.Description like '%'+@Description+'%')
 ORDER BY D.Description
END

GO



