USE ProyectoFinal;

 /*   Clientes                       
 
    Crear un cliente
    Leer todos los clientes                     
    Leer un cliente en particular                     
    Actualizar un cliente                     
    Eliminar un cliente                     
                     
    Marcas

    Crear una Marca                     
    Leer todas las marcas                     
    Leer una marca en particular                     
    Actualizar una marca
    Eliminar una marca                     

    Modelos

    Crear un modelo
    Leer todos los modelos
    Leer un modelo en particular
    Leer todos los modelos de una marca
    Actualizar un modelo
    Eliminar un modelo

    Especificaciones

    Crear unas especificaciones
    Leer todas las especificaiones
    Leer todos las especificaciones de un modelo
    Actualizar unas especificaciones
    Eliminar un articulo

    Ventas

    Crear una venta
    Leer todas las ventas
    Leer una venta en particular
    Leer todas las ventas de un cliente
    Leer todas las ventas de un modelo
    Actualizar una venta
    Eliminar una venta

    Paises

    Crear un pais
    Leer todos los paises
    Leer un pais en particular
    Actualizar un pais
    Eliminar un pais

    */

INSERT INTO CLIENTES (ID_CLIENTES,NOMBRE,APELLIDOS,TELEFONO,EMAIL,DIRECCION,CP,CIUDAD,PAIS) VALUES (11,"ALAN","MORENO","5512345678","ALAN@GMAIL.COM","VIZACAINAS","53100","CDMX",141);
SELECT * FROM clientes;
SELECT * FROM CLIENTES WHERE ID_CLIENTES = 1;
SELECT C.NOMBRE, C.APELLIDOS, C.TELEFONO, C.EMAIL, C.EMAIL, C.DIRECCION, C.CP, C.CIUDAD, P.NOMBRE AS PAIS
FROM CLIENTES AS C
    INNER JOIN PAISES AS P
    ON C.PAIS = P.ID_PAISES;
UPDATE CLIENTES SET NOMBRE = "ALAN", APELLIDOS="MORENO", TELEFONO="5587654321", EMAIL="ALAN@GMAIL.COM", DIRECCION="LOMAS VERDES", CP="53100", CIUDAD="MONTERREY", PAIS=32 WHERE ID_CLIENTES = 11;
SELECT * FROM clientes;
DELETE FROM CLIENTES WHERE ID_CLIENTES = 11;

INSERT INTO MARCAS (ID_MARCAS,NOMBRE_DE_MARCA,SISTEMA_OPERATIVO,FECHA_DE_FUNDACION,LUGAR_DE_FUNDACION,FUNDADORES) VALUES(11,"REALME","ANDROID","2018-05-04","INDIA","SKY_LI");
SELECT * FROM MARCAS;
SELECT * FROM MARCAS WHERE ID_MARCAS = 1;
UPDATE MARCAS SET NOMBRE_DE_MARCA="REALME", SISTEMA_OPERATIVO="REALME9", FECHA_DE_FUNDACION="2018-05-04", LUGAR_DE_FUNDACION="CHINA_SHENZHEN", FUNDADORES="SKY_LI" WHERE ID_MARCAS = 11;
SELECT * FROM MARCAS;
DELETE FROM MARCAS WHERE ID_MARCAS = 11;

INSERT INTO MODELOS (ID_MODELOS,NOMBRE_DE_MODELO,LANZAMIENTO_YEAR,ID_MARCAS) VALUES (11,"IPHONE_13_PRO",1999,1);
SELECT * FROM MODELOS;
SELECT * FROM MODELOS WHERE ID_MODELOS = 1;
SELECT mo.NOMBRE_DE_MODELO, mo.LANZAMIENTO_YEAR, ma.NOMBRE_DE_MARCA AS marcas
FROM MODELOS AS MO 
	INNER JOIN MARCAS AS ma
    ON mo.ID_MARCAS = ma.ID_MARCAS;
UPDATE MODELOS SET NOMBRE_DE_MODELO="IPHONE_13_PRO_MAX", LANZAMIENTO_YEAR="2021" WHERE ID_MODELOS = 11;
SELECT * FROM MODELOS;
DELETE FROM MODELOS WHERE ID_MODELOS  = 11;

INSERT INTO especificaciones (ID_ESPECIFICACIONES,PANTALLA,CAMARA_PRINCIPAL,MEMORIA,PROCESADOR,PRECIO,ID_MODELOS) VALUES (11,"OLED+","24MP","12GB","SNAPDRAGON_8_GEN_1","$19.130.00",1);
SELECT * FROM especificaciones;
SELECT * FROM especificaciones WHERE ID_ESPECIFICACIONES = 1;
SELECT e.PANTALLA, e.CAMARA_PRINCIPAL, e.MEMORIA, e.PROCESADOR, e.PRECIO, mo.NOMBRE_DE_MODELO AS modelos
FROM especificaciones AS e 
	INNER JOIN modelos AS mo 
    ON e.ID_ESPECIFICACIONES = mo.ID_MODELOS;
UPDATE especificaciones SET PANTALLA="AMOLED_DOTDISPLAY", CAMARA_PRINCIPAL="200MP", MEMORIA="12GB", PROCESADOR="SNAPDRAGON_8_GEN_1", PRECIO="$19.130.00" WHERE ID_ESPECIFICACIONES = 11;
SELECT * FROM especificaciones;
DELETE FROM especificaciones WHERE ID_ESPECIFICACIONES = 11;

INSERT INTO VENTAS (ID_VENTAS,ID_MODELOS,ID_CLIENTES) VALUES (11,2,1);
SELECT * FROM ventas;
SELECT * FROM ventas WHERE ID_VENTAS = 1;
SELECT mo.NOMBRE_DE_MODELO AS modelos
FROM VENTAS AS v
	INNER JOIN modelos AS mo 
    ON v.ID_VENTAS = mo.ID_MODELOS;
SELECT c.NOMBRE AS clientes
FROM VENTAS AS v 
	INNER JOIN clientes AS c
    ON v.ID_VENTAS = c.ID_CLIENTES;
UPDATE VENTAS SET ID_MODELOS=5 , ID_CLIENTES=1 WHERE ID_VENTAS = 11;
SELECT * FROM ventas;
DELETE FROM VENTAS WHERE ID_VENTAS = 11;
    
INSERT INTO PAISES (ID_PAISES,NOMBRE,DOMINIO) VALUES (249,"Atlantis", "AS");
SELECT * FROM paises;
SELECT * FROM paises WHERE ID_PAISES = 141;
UPDATE PAISES SET NOMBRE = "Tacubaya", DOMINIO="TB" WHERE ID_PAISES = 249;
SELECT * FROM paises WHERE ID_PAISES = 249;
DELETE FROM PAISES WHERE ID_PAISES = 249;


    