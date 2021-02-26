IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_MUNICIPIOS') 
DROP TABLE CAT_MUNICIPIOS;
GO
CREATE TABLE CAT_MUNICIPIOS(
    ENTIDAD_ID      INT,                            -- Es el identificador de la entidad
    MUNICIPIO_ID    INT,                            -- Es el identificador del municipio
    CVE_CAB		    INT,						    -- Clave cab, en todos los casos es 1
    NOMBRE_MUN      VARCHAR(200) NOT NULL,          -- Nombre 1 de la Entidad
    NOMBRE_CAB      VARCHAR(200) NOT NULL,          -- Nombre 2 de la Entidad
);
GO