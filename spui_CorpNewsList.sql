CREATE OR ALTER PROCEDURE [dbo].[spui_CorpNewsList]
AS
BEGIN
SELECT        CorpNewsID, 
              Caption, 
			  ADate, 
			  ValidThru, 
			  AlwaysValid, 
			  ImagesID,
			  Active

FROM          CorpNews c WITH (NOLOCK)
ORDER BY ADate DESC
END

GO



