CREATE OR ALTER PROCEDURE [dbo].[spww_DepartmentStructure]
 AS 
  BEGIN
  ;WITH ret AS
  (
        SELECT  *, 0 AS Depth, CONVERT(VARCHAR(255),RIGHT(REPLICATE('0',4)+CONVERT(VARCHAR(16),OrderID),4))  AS [Path] 
        FROM    DepartmentPositions WITH (NOLOCK)
        WHERE   ItemType=1 AND OwnerID IS NULL
        
		UNION ALL
        
		SELECT  t.*, Depth+1 AS Depth, CONVERT(VARCHAR(255),[Path]+'\'+RIGHT(REPLICATE('0',4)+CONVERT(VARCHAR(16),t.OrderID),4))  AS [Path] 
        FROM    DepartmentPositions t WITH (NOLOCK)
		        INNER JOIN ret r ON t.OwnerID = r.DepartmentPositionsID AND t.ItemType=1
  )

	SELECT  *
	FROM ret
	WHERE ItemType=1
	ORDER BY [Path]

 END
GO


