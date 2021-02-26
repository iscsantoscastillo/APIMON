IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'MOVIMIENTOS') 
DROP TABLE MOVIMIENTOS;
GO
CREATE TABLE MOVIMIENTOS(
    MOVIMIENTO_ID       BIGINT PRIMARY KEY,		-- Es el identificador de la tabla
    GRUPO_ID            INT,                    -- Identificador del grupo. Referencia en a tabla CAT_GRUPOS
    ESTACION_ID         BIGINT,                 -- Identificador de la estación que solicita. Referencia en la tabla CAT_ESTACIONES
    METODO_API_ID       INT,                    -- Identificador del método API
    CADENA_SOLICITUD    NTEXT,                  -- Cadena con la que se lleva a cabo la solicitud
    FECHA_INI	        DATETIME,		        -- Fecha de inicio del movimiento
    FECHA_FIN	        DATETIME,		        -- Fecha de finalización del movimimento
    CODIGO_RESP         INT,                    -- Código del mensaje de respuesta
	MENSAJE_RESP        VARCHAR(250)		    -- Descipcion del movimiento
);
GO