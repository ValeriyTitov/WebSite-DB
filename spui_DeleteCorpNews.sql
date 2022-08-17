CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteCorpNews] @IDs varchar(MAX)
AS
BEGIN
 DELETE CorpNews
 WHERE CorpNewsID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
