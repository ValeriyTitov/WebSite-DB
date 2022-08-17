CREATE OR ALTER PROCEDURE [dbo].[spww_DocumentSearch] @SearchStr varchar(255)
AS
BEGIN
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

FROM          SiteDocuments WITH (NOLOCK)

WHERE Tags like '%'+@SearchStr+'%' and ShowInDocuments=1

END

GO
