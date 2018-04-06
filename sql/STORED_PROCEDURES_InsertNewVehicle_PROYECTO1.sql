/*
What:		  SP defitinion dbo.usp_Vehicles_InsertNewVehicle
Why:		  Insert New User into dbo.Vehicles Modulo 1 Development - StopGo
Who:		  Juanma Rojas
Creation:	  02-Abr-2018
*/
USE ProyectoModulo1;
GO


-- SP Insert New Vehicle into dbo.Vehicles
CREATE PROCEDURE dbo.usp_Vehicles_InsertNewVehicle
(
	@VehicleID			INT	
		, @LicensePlate	VARCHAR(7)
		, @Brand		VARCHAR(15)
		, @Model		VARCHAR(20)
		, @Color		VARCHAR(10)
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