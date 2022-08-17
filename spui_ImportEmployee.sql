CREATE PROCEDURE [dbo].[spui_ImportEmployee]
  @FullName varchar(255),
  @BirthDate datetime = NULL,
  @Gender bit = 0,
  @RoomNumber varchar(32) = null,
  @Phone varchar(32) = null,
  @MobilePhone varchar(32) = null,
  @EMail varchar(32) = null,
  @MessengerNumber varchar(32) = null
 
AS

BEGIN
 IF @BirthDate is null 
  SET @BirthDate=GETDATE() 
IF @Gender is null 
  SET @Gender=0

 INSERT INTO Employees (OrderID,ADate, FullName,BirthDate, Gender,  RoomNumber,  Phone,  MobilePhone,  EMail, ShowBirthDay, Active, MessengerNumber)
 VALUES (0,GETDATE(), @FullName,@BirthDate, @Gender,  @RoomNumber,  @Phone,  @MobilePhone,  @EMail, 1, 1, @MessengerNumber)


END

GO



