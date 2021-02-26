IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_ESTACIONES') 
DROP TABLE CAT_ESTACIONES;
GO
CREATE TABLE CAT_ESTACIONES(
    ESTACION_ID         BIGINT PRIMARY KEY,		-- Es el identificador de la tabla
	GRUPO_ID			INT,					-- Es el identificador del grupo al que pertenece. La referencia es la tabla CAT_GRUPOS
    NUMERO		        INT NOT NULL,			-- Número
    CRE			        VARCHAR(50),			-- CRE
	EESS		        VARCHAR(50),			-- EESS
	SICC		        VARCHAR(50),			-- SICC
	NOMBRE		        VARCHAR(50),			-- Nombre
	ENTIDAD_ID	        INT,					-- Estado, la referencia es la tabla CAT_ENTIDADES
	MUNICIPIO_ID	    INT,					-- Ciudad, la referencia es la tabla CAT_MUNICIPIOS
	ORIGEN		        CHAR(1),				-- Origen
	FECHA_APERTURA      DATE,				    -- Fecha de apertura
	LATITUD		        VARCHAR(100),			-- Latitud
	LONGITUD	        VARCHAR(100),			-- Longitud
	DIRECCION	        VARCHAR(500),			-- Dirección completa de la estación
	RAZON		        VARCHAR(200),           -- Razón Social de la estación
	RFC			        VARCHAR(50),            -- RFC asignada a la estación
	DIRECCION2	        VARCHAR(500),           -- Dirección 2 completa de la estación
	DIESEL		        CHAR(1),				-- Combustible Diesel.  S = Sí lo emplea, N = No lo emplea
	MAGNA		        CHAR(1),				-- Combustible Magna.   S = Sí lo emplea, N = No lo emplea
	REGULAR		        CHAR(1),				-- Combustible Regular. S = Sí lo emplea, N = No lo emplea
	NOMBRE_GERENTE      VARCHAR(100),		    -- Nombre del gerente encargado de la estación
	CORREO1		        VARCHAR(150),			-- Correo 1 asignado a la estación
	CORREO2		        VARCHAR(150),			-- Correo 2 asignado a la estación
	CORREO3		        VARCHAR(150),			-- Correo 3 asignado a la estación
	TELEFONO1	        VARCHAR(100),			-- Teléfono 1 asignado a la estación
	TELEFONO2	        VARCHAR(100),			-- Teléfono 2 asignado a la estación
	TELEFONO3	        VARCHAR(100),			-- Teléfono 3 asignado a la estación
	ESTATUS		        CHAR(1),				-- Estatus de la estación A = Activa, I = Inactiva
);
GO