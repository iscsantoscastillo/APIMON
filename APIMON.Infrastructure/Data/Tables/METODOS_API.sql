IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'METODOS_API') 
DROP TABLE METODOS_API;
GO
CREATE TABLE METODOS_API(
    METODO_API_ID       INT PRIMARY KEY,		-- Es el identificador de la tabla
    METODO_EXT_ID       INT,                    -- Identificador del Método externo al que se conectará. Referencia en la tabla METODOS_EXT_ID
    NOMBRE              VARCHAR(150),           -- Nombre del método
    VARIANTE            INT,                    -- La variante puede ser un consecutivo del método dado que puede tener el mismo nombre.
    DESCRIPCION         VARCHAR(500),           -- Es una breve descripcion de lo que hace el método
    URL                 VARCHAR(300),           -- Url del método
    FECHACREACION       DATE NOT NULL,		    -- Fecha en que se crea el método
    ESTATUS             CHAR(1)                 -- Estatus del Método. A = Activo, I = Inactivo
);
GO