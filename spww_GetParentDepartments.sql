CREATE OR ALTER PROCEDURE [dbo].[spww_GetParentDepartments] @DepartmentPositionsID int
 AS
 BEGIN
;WITH Rec AS
(
   SELECT *,  0 AS Depth, CONVERT(VARCHAR(255),RIGHT(REPLICATE('0',4)+CONVERT(VARCHAR(16),OrderID),4))  AS [Path] 
   FROM DepartmentPositions WITH (NOLOCK)
   WHERE DepartmentPositionsID = @DepartmentPositionsID 
   
   UNION ALL
   
   SELECT C.*,  0 AS Depth, CONVERT(VARCHAR(255),RIGHT(REPLICATE('0',4)+CONVERT(VARCHAR(16),c.OrderID),4))  AS [Path] 
   FROM DepartmentPositions c WITH (NOLOCK)
   INNER JOIN Rec p on C.DepartmentPositionsID = P.OwnerID AND C.DepartmentPositionsID<>IsNull(C.OwnerID,0) 
) 


SELECT *
FROM Rec
WHERE ItemType=1
ORDER BY [Path]

END
GO
