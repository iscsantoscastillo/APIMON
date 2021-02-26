IF EXISTS 
        (SELECT 
             TABLE_NAME 
         FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CAT_MONEDAS') 
DROP TABLE CAT_MONEDAS;
GO
CREATE TABLE CAT_MONEDAS(
    MONEDA_ID INT PRIMARY KEY,      -- Es el identificador de la tabla
    NOMBRE VARCHAR(50) NOT NULL,    -- Nombre del tipo de moneda, Ej. PESOS
    NOMBRE_CORTO VARCHAR(20),       -- Nombre corto denominado por iniciales, Ej. MXN
    DESCRIPCION VARCHAR(100)        -- Descripcion detallada del tipo de moneda
);
GO