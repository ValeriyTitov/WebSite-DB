CREATE OR ALTER PROCEDURE [dbo].[spui_SiteDocumentsList]
AS
BEGIN
SELECT        SiteDocumentsID, 
              OwnerID, 
			  IsGroup, 
			  
			  CASE ShowInDocuments
			   WHEN 1 THEN Description
			    ELSE
		       Description + ' (скрыт)' 
			  END AS Description,
			  
			  Tags, 
			  FileName, 
			  AUser, 
			  ADate, 
			  ImageIndex,
			  ShowInDocuments
FROM          SiteDocuments WITH (NOLOCK)
END

GO


