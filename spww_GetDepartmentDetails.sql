CREATE OR ALTER PROCEDURE [dbo].[spww_GetDepartmentDetails] @DepartmentPositionsID int
AS
BEGIN

;WITH ret AS(
        SELECT  *
        FROM    DepartmentPositions
        WHERE   DepartmentPositionsID = @DepartmentPositionsID
        
		UNION ALL
        
		SELECT  t.*
        FROM    DepartmentPositions t INNER JOIN
                ret r ON t.OwnerID = r.DepartmentPositionsID
)


SELECT *
FROM Employees e WITH (NOLOCK)
INNER JOIN DepartmentPositions dp WITH (NOLOCK) on e.DepartmentPositionsID=dp.DepartmentPositionsID
WHERE e.DepartmentPositionsID IN
(
	SELECT  DepartmentPositionsID
	FROM    ret
)
AND Active=1
ORDER BY dp.OrderID

	
END

GO
