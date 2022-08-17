CREATE OR ALTER PROCEDURE [dbo].[spww_GetWebPage] @WebPagesID int
AS
BEGIN
 SELECT *
 FROM WebPages W WITH(NOLOCK)
 WHERE W.WebPagesID = @WebPagesID
END

GO

