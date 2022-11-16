CREATE   PROC GetProducts
@SubcategoryID IDs READONLY
AS
BEGIN

	SELECT ProductID, Name, Color, Size, ProductSubcategoryID FROM Production.Product
	WHERE ProductSubcategoryID IN (SELECT ID FROM @SubcategoryID)

END
GO

