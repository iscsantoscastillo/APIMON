IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'METODOS_EXT') 
DROP TABLE METODOS_EXT;
GO
CREATE TABLE METODOS_EXT(
    METODO_EXT_ID       INT PRIMARY KEY,		-- Es el identificador de la tabla
    NOMBRE              VARCHAR(150),           -- Nombre del método
    DESCRIPCION         VARCHAR(500),           -- Es una breve descripcion de lo que hace el método
    URL                 VARCHAR(300),           -- Url del método
    ESTATUS             CHAR(1)                 -- Estatus del Método. A = Activo, I = Inactivo
);
GO