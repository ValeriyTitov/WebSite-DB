CREATE OR ALTER FUNCTION [dbo].[fn_SepNumAsTable](@sID varchar(MAX))
RETURNS @IDTable TABLE (ID integer NOT NULL)
AS
BEGIN
  DECLARE @tmpsID  varchar(16)

  IF SUBSTRING(@sID, LEN(@sID), 1) <> ','
    SELECT @sID = @sID + ','
  WHILE CHARINDEX(',', @sID) <> 0 
   BEGIN
    SELECT @tmpsID = LTRIM(RTRIM(LEFT(@sID, CHARINDEX(',', @sID) - 1)))
    INSERT @IDTable SELECT Convert(int, @tmpsID)
    SELECT @sID = SUBSTRING(@sID, CHARINDEX(',', @sID) + 1, LEN(@sID))
  END
  RETURN
END

GO


