CREATE OR ALTER PROCEDURE [dbo].[spww_GetImage] @ImagesID int
AS
BEGIN
 SELECT *
 FROM Images WITH (NOLOCK)
 WHERE ImagesID=@ImagesID
END

GO


