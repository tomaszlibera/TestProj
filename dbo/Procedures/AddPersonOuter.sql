-- test z procedurą zewętrzną
CREATE   PROC AddPersonOuter
@ID int OUTPUT
AS
BEGIN

	EXEC AddPerson
		@PersonType = 'EM', 
		@Title = 'Mr.', 
		@Firstname = 'Biff', 
		@Lastname = 'Tannen', 
		@BusinessEntityID = @ID OUTPUT 

END
GO

