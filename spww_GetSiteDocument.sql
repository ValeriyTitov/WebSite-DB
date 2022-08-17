CREATE  OR ALTER PROCEDURE [dbo].[spww_GetSiteDocument] @SiteDocumentsID int
AS
 BEGIN
  SELECT *
  FROM SiteDocuments WITH (NOLOCK)
  WHERE SiteDocumentsID=@SiteDocumentsID
END

GO


