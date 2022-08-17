CREATE OR ALTER PROCEDURE [dbo].[spww_SubmitContactMessage]
	@UserName varchar(80),
	@ContactEmail varchar(32),
	@ContactPhone varchar(32),
	@Message varchar(255),
	@SubmiterIPAdress varchar(32),
	@SystemMessage bit = 0
AS
BEGIN
INSERT INTO IncomingWebMessages (UserName,ContactEmail,ContactPhone,Message,SubmiterIPAdress, SystemMessage) 
VALUES (@UserName,@ContactEmail,@ContactPhone,@Message,@SubmiterIPAdress, @SystemMessage)
END
GO

