CREATE OR ALTER PROCEDURE [dbo].[spui_SiteDocumentsGroups]
AS
BEGIN
SELECT        SiteDocumentsID, 
              OwnerID, 
			  IsGroup, 
			  Description, 
			  Tags, 
			  FileName, 
			  AUser, 
			  ADate, 
			  ImageIndex

FROM          SiteDocuments WITH (NOLOCK)
WHERE IsGroup=1
END

GO


