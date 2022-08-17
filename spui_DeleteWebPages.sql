CREATE OR ALTER PROCEDURE [dbo].[spui_DeleteWebPages] @IDs varchar(MAX)
AS
BEGIN
 DELETE WebPages
 WHERE WebPagesID in 
  (SELECT ID from fn_SepNumAsTable(@IDs));
END

GO
