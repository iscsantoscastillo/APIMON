IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_GRUPOS') 
DROP TABLE CAT_GRUPOS;
GO
CREATE TABLE CAT_GRUPOS(
    GRUPO_ID INT PRIMARY KEY,       -- Es el identificador de la tabla
    NOMBRE VARCHAR(50) NOT NULL,    -- Nombre del grupo, Ej. GES, ENERKOM, LODEMO, CORPOGAS
    DESCRIPCION VARCHAR(100)        -- Descripcion detallada acerca del grupo
);
GO