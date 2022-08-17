CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteSiteDocument] @IDs varchar(MAX)
AS
BEGIN
 DELETE SiteDocuments
 WHERE SiteDocumentsID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
