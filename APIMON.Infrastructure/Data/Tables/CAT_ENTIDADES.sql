IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_ENTIDADES') 
DROP TABLE CAT_ENTIDADES;
GO
CREATE TABLE CAT_ENTIDADES(
    ENTIDAD_ID INT PRIMARY KEY,         -- Es el identificador de la tabla
    NOMBRE VARCHAR(200) NOT NULL,       -- Nombre de la Entidad
    NOMBRE_CORTO VARCHAR(50)            -- Nombre corto de la Entidad
);
GO