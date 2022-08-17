CREATE OR ALTER PROCEDURE [dbo].[spww_BirthdayListMainPage] @ADate datetime --Что бы кэшировался 1 раз в день на клиенте.
AS
BEGIN
SELECT *
  FROM Employees WITH (NOLOCK)
  WHERE ( (MONTH(BirthDate) = MONTH(GETDATE())) 
      AND (DAY(BirthDate) = DAY(GETDATE())) ) 
	  
	  OR (--Если сегодня понедельник, то показать ещё тех, у кого ДР был в выходные
              (DATEPART(dw,GETDATE()) = 1) 
		  AND (MONTH(BirthDate) = MONTH(GETDATE())) 
		  AND (DAY(BirthDate) = DAY(GETDATE()-1) or  DAY(BirthDate) = DAY(GETDATE()-2) )
		 ) 
  AND ShowBirthday=1
  AND Active=1
END


GO
