CREATE OR ALTER PROCEDURE [dbo].[spww_CorpNewsMainPage] @ADate date --Что бы кэшировался 1 раз в день на клиенте.
AS
BEGIN
SELECT         TOP(10)
               CorpNewsID, 
               Text, 
			   ADate, 
			   ValidThru, 
			   AlwaysValid, 
			   ImagesID,
			   RawHTML
FROM           CorpNews c WITH (NOLOCK)
WHERE (c.AlwaysValid=1) or (C.ValidThru>GETDATE())
ORDER BY ADate desc
END


GO
