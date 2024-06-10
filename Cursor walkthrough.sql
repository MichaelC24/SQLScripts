DECLARE CustomerCursor CURSOR FOR
	SELECT ID,Name,City,State,Sales
		FROM Customers 
		ORDER BY Sales DESC;

		OPEN CustomerCursor;

		DECLARE @ID INT, @NAME VARCHAR(30), @CITY VARCHAR(30), @STATE VARCHAR(2), @SALES decimal(9,2)
		
		FETCH NEXT FROM CustomerCursor INTO @ID, @NAME, @CITY, @STATE, @SALES
		
		WHILE @@FETCH_STATUS =0
			BEGIN
				PRINT CONACAT(@NAME, ' | ' ,@SALES);

				FETCH NEXT FROM CustomerCursor INTO @ID, @NAME, @CITY, @STATE, @SALES

			END

		PRINT @Name;
		
		CLOSE CustomerCursor;

DEALLOCATE CustomerCursor;