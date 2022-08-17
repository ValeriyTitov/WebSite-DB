CREATE OR ALTER PROCEDURE [dbo].[spww_GetSiteDocumentList]
AS BEGIN
SELECT        SiteDocumentsID, 
              OwnerID, 
			  IsGroup, 
			  --Data, 
			  Description, 
			  Tags, 
			  FileName, 
			  AUser, 
			  ADate, 
			  ImageIndex
FROM          SiteDocuments	WITH (NOLOCK)
WHERE ShowInDocuments = 1
ORDER BY IsGroup DESC, SiteDocumentsID 
END

GO


