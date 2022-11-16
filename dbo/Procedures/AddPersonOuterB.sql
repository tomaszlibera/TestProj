
-- test z procedurą zewętrzną
CREATE   PROC AddPersonOuterB
AS
BEGIN

	-- należy zadeklarować zmienną tabelaryczną
	DECLARE @TestOutput_Tbl AS TABLE (id int)

	INSERT INTO #tab345(id)
	EXEC AddPersonB
		@PersonType = 'EM', 
		@Title = 'Mr.', 
		@Firstname = 'Biff', 
		@Lastname = 'Tannen'

	--SELECT * FROM @TestOutput_Tbl

	SELECT * FROM #tab345


END
GO

