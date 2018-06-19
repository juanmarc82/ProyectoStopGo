/*
What:		  Script Proyect Modulo 1 Stored Procedures Creation
Why:		  Proyect Modulo 1 Development - StopGo
Who:		  Juanma Rojas
Creation:	  02-Abr-2018
*/

USE ProyectoModulo1;
GO

-- SP Insert New User into dbo.Users
CREATE PROCEDURE dbo.usp_Users_InsertNewUser
(
		@UserID INT 
			, @Name		VARCHAR
			, @Surname	VARCHAR 
			, @NIFNIE	VARCHAR
			, @DateBirth	DATE
			, @Address	VARCHAR
			, @CP		VARCHAR
			, @Town		VARCHAR 
			, @NationalityID	TINYINT
			, @RegisterDate		DATE
			, @Active	BIT
)
AS
BEGIN
	
		--Start catching possible errors.
	BEGIN TRY;
	
		-- Start transaction
		BEGIN TRANSACTION;
		
				SET @UserID = SCOPE_IDENTITY();				-- Recover last ID, SET next one.
				SET @Active = 1;					-- Turn on User Activity.
				SET @RegisterDate = GETDATE();				-- Recover Register Date.

				INSERT INTO [Users]
					   (
							UserID
								, [Name]
								, Surname
								, NIFNIE
								, DateBirth
								, [Address]
								, CP	
								, Town
								, NationalityID	
								, RegisterDate	
								, Active 
					   )	
					 VALUES
						(
							@UserID
								, @Name		
								, @Surname	
								, @NIFNIE	
								, @DateBirth
								, @Address	
								, @CP		
								, @Town		
								, @NationalityID
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

-- SP Insert New User into dbo.UsersDrivers
CREATE PROCEDURE usp_Users_InsertNewUsersDrivers
(
		 @Name		VARCHAR
			, @Surname	VARCHAR 
			, @NIFNIE	VARCHAR
			, @DateBirth	DATE
			, @Address	VARCHAR
			, @CP		VARCHAR
			, @Town		VARCHAR 
			, @NationalityID	TINYINT
			, @DrivingLicense	BIT
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
				SET @Active = 1;							-- Turn on User Activity.
				SET @RegisterDate = GETDATE();				-- Recover Register Date.

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

-- SP Insert New Vehicle into dbo.Vehicles
CREATE PROCEDURE dbo.usp_Vehicles_InsertNewVehicle
(
	@VehicleID			INT	
		, @LicensePlate	VARCHAR
		, @Brand		VARCHAR
		, @Model		VARCHAR
		, @Color		VARCHAR
		, @UserDriverID	INT 
)

AS			
BEGIN		
			
		--Start catching possible errors.
	BEGIN TRY;
		-- Start transaction
		BEGIN TRANSACTION;	
		
				SET @VehicleID = SCOPE_IDENTITY();		-- Recover last ID, SET next one.
				
				INSERT INTO Vehicles
						 (
							VehicleID	
								, LicensePlate		
								, Brand		
								, Model		
								, Color		
								, UserDriverID	
						 )
				 VALUES
						(
							@VehicleID	
								, @LicensePlate		
								, @Brand		
								, @Model		
								, @Color		
								, @UserDriverID	
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
