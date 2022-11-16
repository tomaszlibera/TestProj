
CREATE   PROC AddPersonOuterB2
AS
BEGIN

	DECLARE @TestOutput_Tbl AS TABLE (id int)

	CREATE TABLE #tab345 (id int)
	SELECT * FROM #tab345

	EXEC AddPersonOuterB

	SELECT * FROM #tab345

	DROP TABLE #tab345


END
GO

