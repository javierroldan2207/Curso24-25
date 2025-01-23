/*CREACION DE TABLAS*/

CREATE TABLE FABRICANTE
(
CODIGO NUMBER(10),
NOMBRE VARCHAR2(100),
CONSTRAINT PK_FABRICANTE PRIMARY KEY (CODIGO)
);

CREATE TABLE PRODUCTO
(
CODIGO NUMBER(10),
NOMBRE VARCHAR2(100),
PRECIO NUMBER(10,2),
CODIGO_FABRICANTE NUMBER(10),
CONSTRAINT PK_PRODUCTO PRIMARY KEY (CODIGO),
CONSTRAINT FK_PRODUCTO FOREIGN KEY (CODIGO_FABRICANTE) REFERENCES FABRICANTE(CODIGO)
);


/*INSERTS TABLA FABRICANTE*/

INSERT INTO FABRICANTE
VALUES (1, 'Asus');

INSERT INTO FABRICANTE
VALUES (2,'Lenovo');

INSERT INTO FABRICANTE
VALUES (3,'Hewlett-Packard');

INSERT INTO FABRICANTE
VALUES (4,'Samsung');

INSERT INTO FABRICANTE
VALUES (5,'Seagate');

INSERT INTO FABRICANTE
VALUES (6,'Crucial');

INSERT INTO FABRICANTE
VALUES (7, 'Gigabyte');

INSERT INTO FABRICANTE
VALUES (8, 'Huawei');

INSERT INTO FABRICANTE
VALUES (9, 'Xiaomi');


/*INSERTS TABLA PRODUCTO*/

INSERT INTO PRODUCTO
VALUES (1, 'Disco duro SATA3 1TB', 86.99, 5);

INSERT INTO PRODUCTO
VALUES (2, 'Memoria RAM DDR4 8GB', 120, 6);

INSERT INTO PRODUCTO
VALUES (3, 'Disco SSD 1 TB', 150.99, 4);

INSERT INTO PRODUCTO
VALUES (4, 'GeForce GTX 1050Ti', 185, 7);

INSERT INTO PRODUCTO
VALUES (5, 'GeForce GTX 1080 Xtreme', 755, 6);

INSERT INTO PRODUCTO
VALUES (6, 'Monitor 24 LED Full HD', 202, 1);

INSERT INTO PRODUCTO
VALUES (7, 'Monitor 27 LED Full HD', 245.99, 1);

INSERT INTO PRODUCTO
VALUES (8, 'Portátil Yoga 520', 559, 2);

INSERT INTO PRODUCTO
VALUES (9, 'Portátil Ideapd 320', 444, 2);

INSERT INTO PRODUCTO
VALUES (10, 'Impresora HP Deskjet 3720', 59.99, 3);

INSERT INTO PRODUCTO
VALUES (11, 'Impresora HP Laserjet Pro M26nw', 180, 3);



--1 Inserta un nuevo fabricante indicando su código y su nombre.

INSERT INTO FABRICANTE
VALUES (10, 'JAVIER');

--2 Inserta un nuevo fabricante indicando solamente su nombre.
CREATE SEQUENCE SQN_FABRICANTE
START WITH 11
INCREMENT BY 1;

INSERT INTO FABRICANTE 
VALUES (SQN_FABRICANTE.NEXTVAL,'Fabricante1');
--3 Inserta un nuevo producto asociado a uno de los nuevos fabricantes. La
--sentencia de inserción debe
--incluir: código, nombre, precio y código_fabricante.

INSERT INTO PRODUCTO
VALUES (12,'PORTATIL HP',400.95,10);

--4 Inserta un nuevo producto asociado a uno de los nuevos fabricantes. La
--sentencia de inserción debe incluir: nombre, precio y código_fabricante.

CREATE SEQUENCE SQN_PRODUCTO
START WITH 13
INCREMENT BY 1;

INSERT INTO PRODUCTO
VALUES (SQN_PRODUCTO.NEXTVAL,'Camara Sony',550.25,10)

--5 Elimina el fabricante Asus. ¿Es posible eliminarlo? Si no fuese posible,
--¿qué cambios debería realizar para que fuese posible borrarlo?

DELETE FROM FABRICANTE
WHERE NOMBRE LIKE 'Asus';

--6 Elimina el fabricante Xiaomi. ¿Es posible eliminarlo? Si no fuese posible,
--¿qué cambios debería realizar para que fuese posible borrarlo?

DELETE FROM FABRICANTE
WHERE NOMBRE LIKE 'Xiaomi';


SELECT * FROM PRODUCTO;

SELECT * FROM FABRICANTE;










