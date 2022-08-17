CREATE OR ALTER PROCEDURE [dbo].[spui_ChangeMessageReadState] @IDs varchar(MAX), @Readed bit
AS
BEGIN
 UPDATE IncomingWebMessages
 SET Readed=@Readed
 WHERE IncomingWebMessagesID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO



