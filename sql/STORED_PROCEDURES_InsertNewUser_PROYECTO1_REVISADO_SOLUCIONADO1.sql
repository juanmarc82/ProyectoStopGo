/*
What:		  SP defitinion dbo.usp_Users_InsertNewUser
Why:		  Insert New User into dbo.UsersProyect Modulo 1 Development - StopGo
Who:		  Juanma Rojas
Creation:	  02-Abr-2018
*/
USE ProyectoModulo1;
GO


CREATE PROCEDURE dbo.usp_Users_InsertNewUser
(
		 @Name		VARCHAR(25)	
			, @Surname	VARCHAR(50)
			, @NIFNIE	VARCHAR(9)
			, @Email	VARCHAR(100)
			, @Phone	VARCHAR(15)
			--, @Photo	VARCHAR(100)
			, @Password	VARCHAR(20)
			--, @DateBirth	DATE
			, @Address	VARCHAR(200)
			--, @CP		VARCHAR(5)
			, @Town		VARCHAR(50)
			--, @NationalityID	TINYINT			-- JM: No sé porqué me da como error ese GETDATE() en los paréntesis.
)

AS
BEGIN
	
		--Start catching possible errors.
	BEGIN TRY;
		--DECLARE @RegisterDate	DATE			-- Recover Register Date.  -- PB:  Puedes poner aqui un default value, de esta forma:  @RegisterDate	DATE = GETDATE()   y borra la linea de abajo en el código
		--DECLARE @Active			BIT					-- Turn on User Activity.	-- PB:  Puedes poner aqui un default value, de esta forma:  @Active	BIT = 1 y borra la linea de abajo en el código
		
		-- Start transaction
		BEGIN TRANSACTION;
			
							-- Recover last ID, SET next one.	-- PB: En este caso no hace falta esta línea, solo cuando hay dos INSERTs, 
				--SET @RegisterDate = GetDate();																			-- y en el segundo te hace falta el ID generado en el primero.
				--SET @Active = 1;																				-- JM: No entiendo lo que quieres decir con esto de los dos INSERT y lo del segundo
																								-- caso. El segundo Stored Procedure o dentro de este mismo en el INSERT??
							

				INSERT INTO [Users]
					   (
							[Name]
								, Surname
								, NIFNIE
								, Email	
								, Phone
								--, Photo			-- Añadiré este campo más adelante
								, [Password]
								--, DateBirth
								, [Address]
								--, CP	
								, Town
								--, NationalityID	
								--, Active
								--, RegisterDate
					   )	
					 VALUES
						(
							 @Name		
								, @Surname	
								, @NIFNIE	
								, @Email	
								, @Phone
								--, @Photo			-- Añadiré este campo más adelante
								, @Password	
								--, @DateBirth
								, @Address	
								--, @CP		
								, @Town		
								--, @NationalityID
								--, @Active
								--, @RegisterDate
						);
		--Confirmation of transaction.
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		-- Checking active transaction.
		IF @@TRANCOUNT > 0
		BEGIN
			-- If exist, undo it.
			ROLLBACK TRANSACTION;
			PRINT 'Error Catched. Operation canceled...';
		END
	END CATCH
END
GO


