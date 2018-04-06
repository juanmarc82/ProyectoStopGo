USE ProyectoModulo1
GO

CREATE LOGIN Juanma  
   WITH PASSWORD = 'stopgo';  
GO  


CREATE USER Juanma FOR LOGIN Juanma;  
GO

EXEC sp_addrolemember N'db_datareader', N'Juanma'


USE master;

GRANT SELECT ON db.ProyectoModulo1 TO Juanma;

--SELECT name FROM  sys.schemas WHERE principal_id = USER_ID('Juanma')
--ALTER AUTHORIZATION ON SCHEMA::ProyectoModulo1 TO dbo 
--GO
--DROP USER Juanma


CREATE LOGIN JuanmaAdmin  
   WITH PASSWORD = '';  
GO  


CREATE USER JuanmaAdmin FOR LOGIN JuanmaAdmin;  
GO

EXEC sp_addrolemember N'db_datareader', N'JuanmaAdmin'


USE [ProyectoModulo1]
GO

INSERT INTO [dbo].[Users]
           ([Name]
           ,[Surname]
           ,[NIFNIE]
           ,[Email]
           ,[Phone]
           ,[Password]
           ,[Address]
           ,[Town]
           ,[Driver])
     VALUES
           ('Juanma'
           ,'Rojas'
           ,'77666999'
           ,'juanma@gmail.com'
           ,'666999333'
           ,'111111'
           ,'C/ Pepito'
           ,'Málaga'
           ,1)
GO

