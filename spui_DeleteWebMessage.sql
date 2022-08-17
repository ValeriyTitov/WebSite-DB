CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteWebMessage] @IDs varchar(MAX), @Readed bit
AS
BEGIN
 DELETE IncomingWebMessages
 WHERE IncomingWebMessagesID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
