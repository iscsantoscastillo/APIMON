IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'MAPEOS') 
DROP TABLE MAPEOS;
GO
CREATE TABLE MAPEOS(
    MAPEO_ID            INT PRIMARY KEY,		-- Es el identificador de la tabla
    NOMBRE              VARCHAR(150),           -- Nombre del mapeo
    DESCRIPCION         VARCHAR(500),           -- Es una breve descripcion de lo que hace el MAPEO
    METODO_API_ID       INT,                    -- Identificador del método de entrada. Referencia a la tabla METODOS_API
    METODO_EXT_ID       INT,                    -- Identificador del método externo que será consumido. Referencia a la tabla METODOS_EXT
    ESTATUS             CHAR(1)                 -- Estatus del Método. A = Activo, I = Inactivo
);
GO