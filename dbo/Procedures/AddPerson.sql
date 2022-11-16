
CREATE   PROC AddPerson
	@PersonType nchar(2),
	@Title nvarchar(8),
	@Firstname Name = NULL,
	@Lastname Name,
	@BusinessEntityID int = NULL OUTPUT -- !!!!
AS
	SET NOCOUNT ON

	INSERT INTO Person.BusinessEntity DEFAULT VALUES
	SELECT @BusinessEntityID = SCOPE_IDENTITY()

	INSERT INTO Person.Person (BusinessEntityID, PersonType, Title, FirstName, LastName)
	VALUES (@BusinessEntityID, @PersonType, @Title, @Firstname, @Lastname)

	PRINT @BusinessEntityID
GO

