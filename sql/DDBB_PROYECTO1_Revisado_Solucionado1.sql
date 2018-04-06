/*
What:		  Script Proyect Modulo 1 DataBase Creation 
Why:		  Proyect Modulo 1 Development - StopGo
Who:		  Juanma Rojas
Creation:	  02-Abr-2018
*/

-- DB ProyectoModulo1 Creation

USE master;  
GO  
drop database ProyectoModulo1

IF DB_ID (N'ProyectoModulo1') IS NOT NULL 
DROP DATABASE ProyectoModulo1;  
GO  
CREATE DATABASE ProyectoModulo1  
COLLATE Latin1_General_CS_AI  
WITH TRUSTWORTHY ON, DB_CHAINING ON;  
GO 

USE ProyectoModulo1;
GO

-- Nationalities table Creation dbo.Nationalities
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name] = 'Nationalities')
BEGIN
    DROP TABLE Users;  
    PRINT 'Table already exists, so drop is proceeded';
END
ELSE
BEGIN
    PRINT 'Table doesn´t exists, drop not necessary';
END
GO

/*
CREATE TABLE Nationalities (
  NationalityID TINYINT IDENTITY (1, 1)  NOT NULL
  , EU	BIT NOT NULL
  , Code SMALLINT default NULL
  , iso3166a1 VARCHAR(2) default NULL
  , iso3166a2 VARCHAR(3) default NULL
  , Country VARCHAR(128) default NULL
 , CONSTRAINT U_Nationalities_NationalityID UNIQUE(NationalityID) );

-- PK assignment in dbo.Nationalities
 ALTER TABLE dbo.Nationalities
ADD CONSTRAINT PK_Nationalities_NationalityID PRIMARY KEY (NationalityID);  
GO   


INSERT INTO Nationalities VALUES ( 0, 4, 'AF', 'AFG', 'Afganistán');
INSERT INTO Nationalities VALUES ( 0, 248, 'AX', 'ALA', 'Islas Gland');
INSERT INTO Nationalities VALUES ( 0, 8, 'AL', 'ALB', 'Albania');
INSERT INTO Nationalities VALUES ( 1, 276, 'DE', 'DEU', 'Alemania');
INSERT INTO Nationalities VALUES ( 0, 20, 'AD', 'AND', 'Andorra');
INSERT INTO Nationalities VALUES ( 0, 24, 'AO', 'AGO', 'Angola');
INSERT INTO Nationalities VALUES ( 0, 660, 'AI', 'AIA', 'Anguilla');
INSERT INTO Nationalities VALUES ( 0, 10, 'AQ', 'ATA', 'Antártida');
INSERT INTO Nationalities VALUES ( 0, 28, 'AG', 'ATG', 'Antigua y Barbuda');
INSERT INTO Nationalities VALUES ( 0, 530, 'AN', 'ANT', 'Antillas Holandesas');
INSERT INTO Nationalities VALUES ( 0, 682, 'SA', 'SAU', 'Arabia Saudí');
INSERT INTO Nationalities VALUES ( 0, 12, 'DZ', 'DZA', 'Argelia');
INSERT INTO Nationalities VALUES ( 0, 32, 'AR', 'ARG', 'Argentina');
INSERT INTO Nationalities VALUES ( 0, 51, 'AM', 'ARM', 'Armenia');
INSERT INTO Nationalities VALUES ( 0, 533, 'AW', 'ABW', 'Aruba');
INSERT INTO Nationalities VALUES ( 0, 36, 'AU', 'AUS', 'Australia');
INSERT INTO Nationalities VALUES ( 1, 40, 'AT', 'AUT', 'Austria');
INSERT INTO Nationalities VALUES ( 0, 31, 'AZ', 'AZE', 'Azerbaiyán');
INSERT INTO Nationalities VALUES ( 0, 44, 'BS', 'BHS', 'Bahamas');
INSERT INTO Nationalities VALUES ( 0, 48, 'BH', 'BHR', 'Bahréin');
INSERT INTO Nationalities VALUES ( 0, 50, 'BD', 'BGD', 'Bangladesh');
INSERT INTO Nationalities VALUES ( 0, 52, 'BB', 'BRB', 'Barbados');
INSERT INTO Nationalities VALUES ( 0, 112, 'BY', 'BLR', 'Bielorrusia');
INSERT INTO Nationalities VALUES ( 1, 56, 'BE', 'BEL', 'Bélgica');
INSERT INTO Nationalities VALUES ( 0, 84, 'BZ', 'BLZ', 'Belice');
INSERT INTO Nationalities VALUES ( 0, 204, 'BJ', 'BEN', 'Benin');
INSERT INTO Nationalities VALUES ( 0, 60, 'BM', 'BMU', 'Bermudas');
INSERT INTO Nationalities VALUES ( 0, 64, 'BT', 'BTN', 'Bhután');
INSERT INTO Nationalities VALUES ( 0, 68, 'BO', 'BOL', 'Bolivia');
INSERT INTO Nationalities VALUES ( 0, 70, 'BA', 'BIH', 'Bosnia y Herzegovina');
INSERT INTO Nationalities VALUES ( 0, 72, 'BW', 'BWA', 'Botsuana');
INSERT INTO Nationalities VALUES ( 0, 74, 'BV', 'BVT', 'Isla Bouvet');
INSERT INTO Nationalities VALUES ( 0, 76, 'BR', 'BRA', 'Brasil');
INSERT INTO Nationalities VALUES ( 0, 96, 'BN', 'BRN', 'Brunéi');
INSERT INTO Nationalities VALUES ( 1, 100, 'BG', 'BGR', 'Bulgaria');
INSERT INTO Nationalities VALUES ( 0, 854, 'BF', 'BFA', 'Burkina Faso');
INSERT INTO Nationalities VALUES ( 0, 108, 'BI', 'BDI', 'Burundi');
INSERT INTO Nationalities VALUES ( 0, 132, 'CV', 'CPV', 'Cabo Verde');
INSERT INTO Nationalities VALUES ( 0, 136, 'KY', 'CYM', 'Islas Caimán');
INSERT INTO Nationalities VALUES ( 0, 116, 'KH', 'KHM', 'Camboya');
INSERT INTO Nationalities VALUES ( 0, 120, 'CM', 'CMR', 'Camerún');
INSERT INTO Nationalities VALUES ( 0, 124, 'CA', 'CAN', 'Canadá');
INSERT INTO Nationalities VALUES ( 0, 140, 'CF', 'CAF', 'República Centroafricana');
INSERT INTO Nationalities VALUES ( 0, 148, 'TD', 'TCD', 'Chad');
INSERT INTO Nationalities VALUES ( 1, 203, 'CZ', 'CZE', 'República Checa');
INSERT INTO Nationalities VALUES ( 0, 152, 'CL', 'CHL', 'Chile');
INSERT INTO Nationalities VALUES ( 0, 156, 'CN', 'CHN', 'China');
INSERT INTO Nationalities VALUES ( 1, 196, 'CY', 'CYP', 'Chipre');
INSERT INTO Nationalities VALUES ( 0, 162, 'CX', 'CXR', 'Isla de Navidad');
INSERT INTO Nationalities VALUES ( 0, 336, 'VA', 'VAT', 'Ciudad del Vaticano');
INSERT INTO Nationalities VALUES ( 0, 166, 'CC', 'CCK', 'Islas Cocos');
INSERT INTO Nationalities VALUES ( 0, 170, 'CO', 'COL', 'Colombia');
INSERT INTO Nationalities VALUES ( 0, 174, 'KM', 'COM', 'Comoras');
INSERT INTO Nationalities VALUES ( 0, 180, 'CD', 'COD', 'República Democrática del Congo');
INSERT INTO Nationalities VALUES ( 0, 178, 'CG', 'COG', 'Congo');
INSERT INTO Nationalities VALUES ( 0, 184, 'CK', 'COK', 'Islas Cook');
INSERT INTO Nationalities VALUES ( 0, 408, 'KP', 'PRK', 'Corea del Norte');
INSERT INTO Nationalities VALUES ( 0, 410, 'KR', 'KOR', 'Corea del Sur');
INSERT INTO Nationalities VALUES ( 0, 384, 'CI', 'CIV', 'Costa de Marfil');
INSERT INTO Nationalities VALUES ( 0, 188, 'CR', 'CRI', 'Costa Rica');
INSERT INTO Nationalities VALUES ( 1, 191, 'HR', 'HRV', 'Croacia');
INSERT INTO Nationalities VALUES ( 0, 192, 'CU', 'CUB', 'Cuba');
INSERT INTO Nationalities VALUES ( 1, 208, 'DK', 'DNK', 'Dinamarca');
INSERT INTO Nationalities VALUES ( 0, 212, 'DM', 'DMA', 'Dominica');
INSERT INTO Nationalities VALUES ( 0, 214, 'DO', 'DOM', 'República Dominicana');
INSERT INTO Nationalities VALUES ( 0, 218, 'EC', 'ECU', 'Ecuador');
INSERT INTO Nationalities VALUES ( 0, 818, 'EG', 'EGY', 'Egipto');
INSERT INTO Nationalities VALUES ( 0, 222, 'SV', 'SLV', 'El Salvador');
INSERT INTO Nationalities VALUES ( 0, 784, 'AE', 'ARE', 'Emiratos Árabes Unidos');
INSERT INTO Nationalities VALUES ( 0, 232, 'ER', 'ERI', 'Eritrea');
INSERT INTO Nationalities VALUES ( 1, 703, 'SK', 'SVK', 'Eslovaquia');
INSERT INTO Nationalities VALUES ( 1, 705, 'SI', 'SVN', 'Eslovenia');
INSERT INTO Nationalities VALUES ( 1, 724, 'ES', 'ESP', 'España');
INSERT INTO Nationalities VALUES ( 0, 581, 'UM', 'UMI', 'Islas ultramarinas de Estados Unidos');
INSERT INTO Nationalities VALUES ( 0, 840, 'US', 'USA', 'Estados Unidos');
INSERT INTO Nationalities VALUES ( 1, 233, 'EE', 'EST', 'Estonia');
INSERT INTO Nationalities VALUES ( 0, 231, 'ET', 'ETH', 'Etiopía');
INSERT INTO Nationalities VALUES ( 0, 234, 'FO', 'FRO', 'Islas Feroe');
INSERT INTO Nationalities VALUES ( 0, 608, 'PH', 'PHL', 'Filipinas');
INSERT INTO Nationalities VALUES ( 0, 246, 'FI', 'FIN', 'Finlandia');
INSERT INTO Nationalities VALUES ( 0, 242, 'FJ', 'FJI', 'Fiyi');
INSERT INTO Nationalities VALUES ( 1, 250, 'FR', 'FRA', 'Francia');
INSERT INTO Nationalities VALUES ( 0, 266, 'GA', 'GAB', 'Gabón');
INSERT INTO Nationalities VALUES ( 0, 270, 'GM', 'GMB', 'Gambia');
INSERT INTO Nationalities VALUES ( 0, 268, 'GE', 'GEO', 'Georgia');
INSERT INTO Nationalities VALUES ( 0, 239, 'GS', 'SGS', 'Islas Georgias del Sur y Sandwich del Sur');
INSERT INTO Nationalities VALUES ( 0, 288, 'GH', 'GHA', 'Ghana');
INSERT INTO Nationalities VALUES ( 0, 292, 'GI', 'GIB', 'Gibraltar');
INSERT INTO Nationalities VALUES ( 0, 308, 'GD', 'GRD', 'Granada');
INSERT INTO Nationalities VALUES ( 1, 300, 'GR', 'GRC', 'Grecia');
INSERT INTO Nationalities VALUES ( 0, 304, 'GL', 'GRL', 'Groenlandia');
INSERT INTO Nationalities VALUES ( 0, 312, 'GP', 'GLP', 'Guadalupe');
INSERT INTO Nationalities VALUES ( 0, 316, 'GU', 'GUM', 'Guam');
INSERT INTO Nationalities VALUES ( 0, 320, 'GT', 'GTM', 'Guatemala');
INSERT INTO Nationalities VALUES ( 0, 254, 'GF', 'GUF', 'Guayana Francesa');
INSERT INTO Nationalities VALUES ( 0, 324, 'GN', 'GIN', 'Guinea');
INSERT INTO Nationalities VALUES ( 0, 226, 'GQ', 'GNQ', 'Guinea Ecuatorial');
INSERT INTO Nationalities VALUES ( 0, 624, 'GW', 'GNB', 'Guinea-Bissau');
INSERT INTO Nationalities VALUES ( 0, 328, 'GY', 'GUY', 'Guyana');
INSERT INTO Nationalities VALUES ( 0, 332, 'HT', 'HTI', 'Haití');
INSERT INTO Nationalities VALUES ( 0, 334, 'HM', 'HMD', 'Islas Heard y McDonald');
INSERT INTO Nationalities VALUES ( 0, 340, 'HN', 'HND', 'Honduras');
INSERT INTO Nationalities VALUES ( 0, 344, 'HK', 'HKG', 'Hong Kong');
INSERT INTO Nationalities VALUES ( 0, 348, 'HU', 'HUN', 'Hungría');
INSERT INTO Nationalities VALUES ( 0, 356, 'IN', 'IND', 'India');
INSERT INTO Nationalities VALUES ( 0, 360, 'ID', 'IDN', 'Indonesia');
INSERT INTO Nationalities VALUES ( 0, 364, 'IR', 'IRN', 'Irán');
INSERT INTO Nationalities VALUES ( 0, 368, 'IQ', 'IRQ', 'Iraq');
INSERT INTO Nationalities VALUES ( 1, 372, 'IE', 'IRL', 'Irlanda');
INSERT INTO Nationalities VALUES ( 0, 352, 'IS', 'ISL', 'Islandia');
INSERT INTO Nationalities VALUES ( 0, 376, 'IL', 'ISR', 'Israel');
INSERT INTO Nationalities VALUES ( 1, 380, 'IT', 'ITA', 'Italia');
INSERT INTO Nationalities VALUES ( 0, 388, 'JM', 'JAM', 'Jamaica');
INSERT INTO Nationalities VALUES ( 0, 392, 'JP', 'JPN', 'Japón');
INSERT INTO Nationalities VALUES ( 0, 400, 'JO', 'JOR', 'Jordania');
INSERT INTO Nationalities VALUES ( 0, 398, 'KZ', 'KAZ', 'Kazajstán');
INSERT INTO Nationalities VALUES ( 0, 404, 'KE', 'KEN', 'Kenia');
INSERT INTO Nationalities VALUES ( 0, 417, 'KG', 'KGZ', 'Kirguistán');
INSERT INTO Nationalities VALUES ( 0, 296, 'KI', 'KIR', 'Kiribati');
INSERT INTO Nationalities VALUES ( 0, 414, 'KW', 'KWT', 'Kuwait');
INSERT INTO Nationalities VALUES ( 0, 418, 'LA', 'LAO', 'Laos');
INSERT INTO Nationalities VALUES ( 0, 426, 'LS', 'LSO', 'Lesotho');
INSERT INTO Nationalities VALUES ( 1, 428, 'LV', 'LVA', 'Letonia');
INSERT INTO Nationalities VALUES ( 0, 422, 'LB', 'LBN', 'Líbano');
INSERT INTO Nationalities VALUES ( 0, 430, 'LR', 'LBR', 'Liberia');
INSERT INTO Nationalities VALUES ( 0, 434, 'LY', 'LBY', 'Libia');
INSERT INTO Nationalities VALUES ( 0, 438, 'LI', 'LIE', 'Liechtenstein');
INSERT INTO Nationalities VALUES ( 1, 440, 'LT', 'LTU', 'Lituania');
INSERT INTO Nationalities VALUES ( 1, 442, 'LU', 'LUX', 'Luxemburgo');
INSERT INTO Nationalities VALUES ( 0, 446, 'MO', 'MAC', 'Macao');
INSERT INTO Nationalities VALUES ( 0, 807, 'MK', 'MKD', 'ARY Macedonia');
INSERT INTO Nationalities VALUES ( 0, 450, 'MG', 'MDG', 'Madagascar');
INSERT INTO Nationalities VALUES ( 0, 458, 'MY', 'MYS', 'Malasia');
INSERT INTO Nationalities VALUES ( 0, 454, 'MW', 'MWI', 'Malawi');
INSERT INTO Nationalities VALUES ( 0, 462, 'MV', 'MDV', 'Maldivas');
INSERT INTO Nationalities VALUES ( 0, 466, 'ML', 'MLI', 'Malí');
INSERT INTO Nationalities VALUES ( 1, 470, 'MT', 'MLT', 'Malta');
INSERT INTO Nationalities VALUES ( 0, 238, 'FK', 'FLK', 'Islas Malvinas');
INSERT INTO Nationalities VALUES ( 0, 580, 'MP', 'MNP', 'Islas Marianas del Norte');
INSERT INTO Nationalities VALUES ( 0, 504, 'MA', 'MAR', 'Marruecos');
INSERT INTO Nationalities VALUES ( 0, 584, 'MH', 'MHL', 'Islas Marshall');
INSERT INTO Nationalities VALUES ( 0, 474, 'MQ', 'MTQ', 'Martinica');
INSERT INTO Nationalities VALUES ( 0, 480, 'MU', 'MUS', 'Mauricio');
INSERT INTO Nationalities VALUES ( 0, 478, 'MR', 'MRT', 'Mauritania');
INSERT INTO Nationalities VALUES ( 0, 175, 'YT', 'MYT', 'Mayotte');
INSERT INTO Nationalities VALUES ( 0, 484, 'MX', 'MEX', 'México');
INSERT INTO Nationalities VALUES ( 0, 583, 'FM', 'FSM', 'Micronesia');
INSERT INTO Nationalities VALUES ( 0, 498, 'MD', 'MDA', 'Moldavia');
INSERT INTO Nationalities VALUES ( 0, 492, 'MC', 'MCO', 'Mónaco');
INSERT INTO Nationalities VALUES ( 0, 496, 'MN', 'MNG', 'Mongolia');
INSERT INTO Nationalities VALUES ( 0, 500, 'MS', 'MSR', 'Montserrat');
INSERT INTO Nationalities VALUES ( 0, 508, 'MZ', 'MOZ', 'Mozambique');
INSERT INTO Nationalities VALUES ( 0, 104, 'MM', 'MMR', 'Myanmar');
INSERT INTO Nationalities VALUES ( 0, 516, 'NA', 'NAM', 'Namibia');
INSERT INTO Nationalities VALUES ( 0, 520, 'NR', 'NRU', 'Nauru');
INSERT INTO Nationalities VALUES ( 0, 524, 'NP', 'NPL', 'Nepal');
INSERT INTO Nationalities VALUES ( 0, 558, 'NI', 'NIC', 'Nicaragua');
INSERT INTO Nationalities VALUES ( 0, 562, 'NE', 'NER', 'Níger');
INSERT INTO Nationalities VALUES ( 0, 566, 'NG', 'NGA', 'Nigeria');
INSERT INTO Nationalities VALUES ( 0, 570, 'NU', 'NIU', 'Niue');
INSERT INTO Nationalities VALUES ( 0, 574, 'NF', 'NFK', 'Isla Norfolk');
INSERT INTO Nationalities VALUES ( 0, 578, 'NO', 'NOR', 'Noruega');
INSERT INTO Nationalities VALUES ( 0, 540, 'NC', 'NCL', 'Nueva Caledonia');
INSERT INTO Nationalities VALUES ( 0, 554, 'NZ', 'NZL', 'Nueva Zelanda');
INSERT INTO Nationalities VALUES ( 0, 512, 'OM', 'OMN', 'Omán');
INSERT INTO Nationalities VALUES ( 1, 528, 'NL', 'NLD', 'Países Bajos');
INSERT INTO Nationalities VALUES ( 0, 586, 'PK', 'PAK', 'Pakistán');
INSERT INTO Nationalities VALUES ( 0, 585, 'PW', 'PLW', 'Palau');
INSERT INTO Nationalities VALUES ( 0, 275, 'PS', 'PSE', 'Palestina');
INSERT INTO Nationalities VALUES ( 0, 591, 'PA', 'PAN', 'Panamá');
INSERT INTO Nationalities VALUES ( 0, 598, 'PG', 'PNG', 'Papúa Nueva Guinea');
INSERT INTO Nationalities VALUES ( 0, 600, 'PY', 'PRY', 'Paraguay');
INSERT INTO Nationalities VALUES ( 0, 604, 'PE', 'PER', 'Perú');
INSERT INTO Nationalities VALUES ( 0, 612, 'PN', 'PCN', 'Islas Pitcairn');
INSERT INTO Nationalities VALUES ( 0, 258, 'PF', 'PYF', 'Polinesia Francesa');
INSERT INTO Nationalities VALUES ( 1, 616, 'PL', 'POL', 'Polonia');
INSERT INTO Nationalities VALUES ( 1, 620, 'PT', 'PRT', 'Portugal');
INSERT INTO Nationalities VALUES ( 0, 630, 'PR', 'PRI', 'Puerto Rico');
INSERT INTO Nationalities VALUES ( 0, 634, 'QA', 'QAT', 'Qatar');
INSERT INTO Nationalities VALUES ( 1, 826, 'GB', 'GBR', 'Reino Unido');
INSERT INTO Nationalities VALUES ( 0, 638, 'RE', 'REU', 'Reunión');
INSERT INTO Nationalities VALUES ( 0, 646, 'RW', 'RWA', 'Ruanda');
INSERT INTO Nationalities VALUES ( 1, 642, 'RO', 'ROU', 'Rumania');
INSERT INTO Nationalities VALUES ( 0, 643, 'RU', 'RUS', 'Rusia');
INSERT INTO Nationalities VALUES ( 0, 732, 'EH', 'ESH', 'Sahara Occidental');
INSERT INTO Nationalities VALUES ( 0, 90, 'SB', 'SLB', 'Islas Salomón');
INSERT INTO Nationalities VALUES ( 0, 882, 'WS', 'WSM', 'Samoa');
INSERT INTO Nationalities VALUES ( 0, 16, 'AS', 'ASM', 'Samoa Americana');
INSERT INTO Nationalities VALUES ( 0, 659, 'KN', 'KNA', 'San Cristóbal y Nevis');
INSERT INTO Nationalities VALUES ( 0, 674, 'SM', 'SMR', 'San Marino');
INSERT INTO Nationalities VALUES ( 0, 666, 'PM', 'SPM', 'San Pedro y Miquelón');
INSERT INTO Nationalities VALUES ( 0, 670, 'VC', 'VCT', 'San Vicente y las Granadinas');
INSERT INTO Nationalities VALUES ( 0, 654, 'SH', 'SHN', 'Santa Helena');
INSERT INTO Nationalities VALUES ( 0, 662, 'LC', 'LCA', 'Santa Lucía');
INSERT INTO Nationalities VALUES ( 0, 678, 'ST', 'STP', 'Santo Tomé y Príncipe');
INSERT INTO Nationalities VALUES ( 0, 686, 'SN', 'SEN', 'Senegal');
INSERT INTO Nationalities VALUES ( 0, 891, 'CS', 'SCG', 'Serbia y Montenegro');
INSERT INTO Nationalities VALUES ( 0, 690, 'SC', 'SYC', 'Seychelles');
INSERT INTO Nationalities VALUES ( 0, 694, 'SL', 'SLE', 'Sierra Leona');
INSERT INTO Nationalities VALUES ( 0, 702, 'SG', 'SGP', 'Singapur');
INSERT INTO Nationalities VALUES ( 0, 760, 'SY', 'SYR', 'Siria');
INSERT INTO Nationalities VALUES ( 0, 706, 'SO', 'SOM', 'Somalia');
INSERT INTO Nationalities VALUES ( 0, 144, 'LK', 'LKA', 'Sri Lanka');
INSERT INTO Nationalities VALUES ( 0, 748, 'SZ', 'SWZ', 'Suazilandia');
INSERT INTO Nationalities VALUES ( 0, 710, 'ZA', 'ZAF', 'Sudáfrica');
INSERT INTO Nationalities VALUES ( 0, 736, 'SD', 'SDN', 'Sudán');
INSERT INTO Nationalities VALUES ( 1, 752, 'SE', 'SWE', 'Suecia');
INSERT INTO Nationalities VALUES ( 0, 756, 'CH', 'CHE', 'Suiza');
INSERT INTO Nationalities VALUES ( 0, 740, 'SR', 'SUR', 'Surinam');
INSERT INTO Nationalities VALUES ( 0, 744, 'SJ', 'SJM', 'Svalbard y Jan Mayen');
INSERT INTO Nationalities VALUES ( 0, 764, 'TH', 'THA', 'Tailandia');
INSERT INTO Nationalities VALUES ( 0, 158, 'TW', 'TWN', 'Taiwán');
INSERT INTO Nationalities VALUES ( 0, 834, 'TZ', 'TZA', 'Tanzania');
INSERT INTO Nationalities VALUES ( 0, 762, 'TJ', 'TJK', 'Tayikistán');
INSERT INTO Nationalities VALUES ( 0, 86, 'IO', 'IOT', 'Territorio Británico del Océano Índico');
INSERT INTO Nationalities VALUES ( 0, 260, 'TF', 'ATF', 'Territorios Australes Franceses');
INSERT INTO Nationalities VALUES ( 0, 626, 'TL', 'TLS', 'Timor Oriental');
INSERT INTO Nationalities VALUES ( 0, 768, 'TG', 'TGO', 'Togo');
INSERT INTO Nationalities VALUES ( 0, 772, 'TK', 'TKL', 'Tokelau');
INSERT INTO Nationalities VALUES ( 0, 776, 'TO', 'TON', 'Tonga');
INSERT INTO Nationalities VALUES ( 0, 780, 'TT', 'TTO', 'Trinidad y Tobago');
INSERT INTO Nationalities VALUES ( 0, 788, 'TN', 'TUN', 'Túnez');
INSERT INTO Nationalities VALUES ( 0, 796, 'TC', 'TCA', 'Islas Turcas y Caicos');
INSERT INTO Nationalities VALUES ( 0, 795, 'TM', 'TKM', 'Turkmenistán');
INSERT INTO Nationalities VALUES ( 0, 792, 'TR', 'TUR', 'Turquía');
INSERT INTO Nationalities VALUES ( 0, 798, 'TV', 'TUV', 'Tuvalu');
INSERT INTO Nationalities VALUES ( 0, 804, 'UA', 'UKR', 'Ucrania');
INSERT INTO Nationalities VALUES ( 0, 800, 'UG', 'UGA', 'Uganda');
INSERT INTO Nationalities VALUES ( 0, 858, 'UY', 'URY', 'Uruguay');
INSERT INTO Nationalities VALUES ( 0, 860, 'UZ', 'UZB', 'Uzbekistán');
INSERT INTO Nationalities VALUES ( 0, 548, 'VU', 'VUT', 'Vanuatu');
INSERT INTO Nationalities VALUES ( 0, 862, 'VE', 'VEN', 'Venezuela');
INSERT INTO Nationalities VALUES ( 0, 704, 'VN', 'VNM', 'Vietnam');
INSERT INTO Nationalities VALUES ( 0, 92, 'VG', 'VGB', 'Islas Vírgenes Británicas');
INSERT INTO Nationalities VALUES ( 0, 850, 'VI', 'VIR', 'Islas Vírgenes de los Estados Unidos');
INSERT INTO Nationalities VALUES ( 0, 876, 'WF', 'WLF', 'Wallis y Futuna');
INSERT INTO Nationalities VALUES ( 0, 887, 'YE', 'YEM', 'Yemen');
INSERT INTO Nationalities VALUES ( 0, 262, 'DJ', 'DJI', 'Yibuti');
INSERT INTO Nationalities VALUES ( 0, 894, 'ZM', 'ZMB', 'Zambia');
INSERT INTO Nationalities VALUES ( 0, 716, 'ZW', 'ZWE', 'Zimbabue');

*/






-- Users table Creation dbo.Users
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name] = 'Users')
BEGIN
    DROP TABLE Users;  
    PRINT 'Table already exists, so drop is proceeded';
END
ELSE
BEGIN
    PRINT 'Table doesn´t exists, drop not necessary';
END
GO

CREATE TABLE Users(
	UserID		INT IDENTITY(1,1) NOT NULL
	, [Name]			VARCHAR (25) NOT NULL
	, Surname			VARCHAR (50) NOT NULL
	, NIFNIE			VARCHAR (9) NOT NULL
	, Email				VARCHAR (100) NOT NULL
	, Phone				VARCHAR (15) NOT NULL
	--, Photo				VARCHAR (100) NULL
	, [Password]		VARCHAR (20) NOT NULL
	--, DateBirth			DATE NOT NULL
	, [Address]			VARCHAR (200) NOT NULL
	--, CP				VARCHAR (5) NOT NULL
	, Town				VARCHAR (50) NOT NULL
	--, NationalityID		TINYINT  NULL
	, Driver			BIT NULL				-- PB: En vez de tener 2 tablas (Users & UsersDrivers), podrías tener sólo 1, y haciendo este campo como opcional (permite NULLs)
	--, PointsObtained	SMALLMONEY NULL			-- JM: Modificado! ;)
	--, PointsSpent		SMALLMONEY NULL
	--, MoneyObtained		SMALLMONEY NULL
	--, MoneySpent		SMALLMONEY NULL
	--, RegisterDate		DATE NOT NULL
	--, Active			BIT NOT NULL
	, CONSTRAINT U_Users_NIFNIE UNIQUE(NIFNIE)
	, CONSTRAINT U_Users_Email UNIQUE(Email) );
GO

-- PK assignment in dbo.Users
ALTER TABLE dbo.Users    
ADD CONSTRAINT PK_Users_UserID PRIMARY KEY (UserID);     
GO
/*
-- FK assignment in dbo.Users
ALTER TABLE dbo.Users    
ADD CONSTRAINT FK_Users_Nationalities_NationalityID FOREIGN KEY (NationalityID)   
    REFERENCES dbo.Nationalities (NationalityID);  
GO

*/

-- Vehicles table Creation dbo.Vehicles
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name] = 'Vehicles')
BEGIN
    DROP TABLE Vehicles;  
    PRINT 'Table already exists, so drop is proceeded';
END
ELSE
BEGIN
    PRINT 'Table doesn´t exists, drop not necessary';
END
GO

CREATE TABLE Vehicles(
	VehicleID		INT IDENTITY(1,1) NOT NULL
	, LicensePlate		VARCHAR (7) NOT NULL
	, Brand				VARCHAR (15) NOT NULL
	, Model				VARCHAR (20) NOT NULL
	, Color				VARCHAR (10) NOT NULL
	, UserID		INT NOT NULL
	, CONSTRAINT U_Vehicles_LicensePlate UNIQUE(LicensePlate)
	);
	
GO

-- PK assignment in dbo.Vehicles
ALTER TABLE dbo.Vehicles    
ADD CONSTRAINT PK_Vehicles_VehicleID PRIMARY KEY (VehicleID);     
GO

-- FK assignment in dbo.Vehicles
ALTER TABLE dbo.Vehicles    
ADD CONSTRAINT FK_Vehicles_Users_UserID FOREIGN KEY (UserID)   
    REFERENCES dbo.Users (UserID);  
GO

-- INDEX creation on dbo.Vehicles (UserID)
CREATE INDEX NIX_Vehicles_UserID ON dbo.Vehicles (UserID ASC);

-- Routes table Creation dbo.Routes
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name] = 'Routes')
BEGIN
    DROP TABLE Routes;  
    PRINT 'Table already exists, so drop is proceeded';
END
ELSE
BEGIN
    PRINT 'Table doesn´t exists, drop not necessary';
END
GO

CREATE TABLE [Routes](
	RouteID		INT IDENTITY(1,1) NOT NULL
	, UserID 			INT NOT NULL
	, UserDriverID 		INT NOT NULL				-- JM: Ahora como podría hacer para que aparecieran el usuario transportado y el conductor?
	, RouteStart		VARCHAR (21) NOT NULL		-- ya que la unica forma de reconocerlos es que tengan "1" en campo "Driver" ¿? 
	, RouteStop			VARCHAR (21) NOT NULL		-- podría crear "UserDriverId" fk a UserID no? Ya desde la APP le metería el usuario identificado como conductor, verdad?	
	, Distance			VARCHAR (3) NOT NULL
	, TimeStart			DATETIME2(2) NOT NULL		
	, TimeStop			DATETIME2(2) NOT NULL
	, TimeTotal			TIME NOT NULL
	, PointsGenerated	SMALLMONEY NULL
	, MoneyGenerated	SMALLMONEY NULL
	, CONSTRAINT U_Routes_RouteID_UserID_UserDriverID UNIQUE(RouteID , UserID, UserDriverID) );
GO

-- PK assignment in dbo.Routes
ALTER TABLE dbo.[Routes]
ADD CONSTRAINT PK_Routes_RouteID PRIMARY KEY (RouteID);     
GO

-- FK assignment in dbo.Routes
ALTER TABLE dbo.[Routes]
ADD CONSTRAINT FK_Routes_Users_UserID FOREIGN KEY (UserID)   
    REFERENCES dbo.Users (UserID);  
GO

--ALTER TABLE dbo.[Routes]    
--ADD CONSTRAINT FK_Routes_UsersDrivers_UserDriverID FOREIGN KEY (UserDriverID)   
--  REFERENCES dbo.UsersDrivers (UserDriverID);  
--GO


-- PB: Muy bien todo en general! Sólo algunos detallitos por refinar, pero el script muy bien. Sigue así!
-- Cualquier otra duda, ya me dices

