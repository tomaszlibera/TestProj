
-- Wersja B
-- bez parametrów OUTPUT
CREATE   PROC AddPersonB
	@PersonType nchar(2),
	@Title nvarchar(8),
	@Firstname Name = NULL,
	@Lastname Name
AS
	SET NOCOUNT ON
	DECLARE @BusinessEntityID int

	INSERT INTO Person.BusinessEntity DEFAULT VALUES
	SELECT @BusinessEntityID = SCOPE_IDENTITY()

	INSERT INTO Person.Person (BusinessEntityID, PersonType, Title, FirstName, LastName)
	VALUES (@BusinessEntityID, @PersonType, @Title, @Firstname, @Lastname)

	SELECT @BusinessEntityID
	UNION
	SELECT '123'
	UNION
	SELECT '567'
GO

