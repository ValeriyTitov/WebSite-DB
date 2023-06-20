CREATE OR ALTER PROCEDURE [dbo].[spww_GetDepartmentIncludes] @DepartmentPositionsID int
AS
BEGIN

;WITH ret AS(
        SELECT  *, 0 AS Depth
        FROM    DepartmentPositions WITH (NOLOCK)
        WHERE   DepartmentPositionsID = @DepartmentPositionsID
        
		UNION ALL
        
		SELECT  t.*, Depth +1 AS Depth
        FROM    DepartmentPositions t WITH (NOLOCK)
		        INNER JOIN  ret r ON ISNULL(t.OwnerID,0) = r.DepartmentPositionsID
)


SELECT  *
FROM    ret
WHERE ItemType=1
ORDER BY Depth, OrderID
END

GO

