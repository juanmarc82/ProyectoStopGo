/*
What:		  SP defitinion usp_Users_InsertNewUsersDrivers
Why:		  Insert New User into dbo.UsersDrivers Modulo 1 Development - StopGo
Who:		  Juanma Rojas
Creation:	  02-Abr-2018
*/
USE ProyectoModulo1;
GO

-- SP Insert New User into dbo.UsersDrivers
CREATE PROCEDURE usp_Users_InsertNewUsersDrivers
(
		 @Name			VARCHAR(25)
			, @Surname	VARCHAR(50) 
			, @NIFNIE	VARCHAR(9)
			, @DateBirth	DATE
			, @Address	VARCHAR(200)
			, @CP		VARCHAR(5)
			, @Town		VARCHAR(50)
			, @NationalityID	TINYINT
			, @DrivingLicense	BIT
			, @RegisterDate DATE = GETDATE()	-- Recover Register Date.
			, @Active BIT = 1;					-- Turn on User Activity.
)

AS			
BEGIN		
	
	DECLARE @UserDriverID INT;
	DECLARE @RegisterDate DATE;	
	DECLARE @Active BIT;	
		
		--Start catching possible errors.
	BEGIN TRY;
		-- Start transaction
		BEGIN TRANSACTION;	
		
				SET @UserDriverID = SCOPE_IDENTITY();		-- Recover last ID, SET next one.
							 			

				INSERT INTO UsersDrivers
						(
							UserDriverID
								, [Name]
								, Surname
								, NIFNIE
								, DateBirth
								, [Address]
								, CP	
								, Town
								, NationalityID	
								, DrivingLicense
								, RegisterDate
								, Active 
					   )	
					 VALUES
						(
							@UserDriverID
								, @Name		
								, @Surname	
								, @NIFNIE	
								, @DateBirth
								, @Address	
								, @CP		
								, @Town		
								, @NationalityID
								, @DrivingLicense
								, @RegisterDate	
								, @Active
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
