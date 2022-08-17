CREATE OR ALTER PROCEDURE [dbo].[spui_WebMessagesList]
AS
BEGIN
SELECT        IncomingWebMessagesID, 
              UserName, 
			  ContactEmail, 
			  ContactPhone, 
			  Message, 
			  SubmiterIPAdress, 
			  Readed, 
			  ADate, 
			  SystemMessage

FROM          IncomingWebMessages WITH (NOLOCK)
ORDER BY ADate DESC
END

GO
