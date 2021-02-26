IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ACCESOS') 
DROP TABLE ACCESOS;
GO
CREATE TABLE ACCESOS(
    ACCESO_ID   INT PRIMARY KEY,        -- Es el identificador de la tabla
    ESTACION_ID INT NOT NULL,           -- Identificador de la estación. Referencia en la tabla CAT_ESTACIONES
    UUID        VARCHAR(50),            -- UUID único
    TOKEN       VARCHAR(100)            -- Descripcion detallada acerca del grupo
);
GO