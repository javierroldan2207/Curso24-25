/*CREACION DE TABLAS*/

CREATE TABLE DEPARTAMENTO
(
CODIGO NUMBER(10),
NOMBRE VARCHAR2(100),
PRESUPUESTO NUMBER(10,2),
CONSTRAINT PK_DEPARTAMENTO PRIMARY KEY (CODIGO)
);

CREATE TABLE EMPLEADO 
(
CODIGO NUMBER(10),
NIF  VARCHAR2(9),
NOMBRE VARCHAR2(100),
APPELLIDO1 VARCHAR2(100),
APELLIDO2 VARCHAR2(100),
CODIGO_DEPARTAMENTO NUMBER(10),
CONSTRAINT PK_EMPLEADO PRIMARY KEY (CODIGO),
CONSTRAINT FK_EMPLEADO FOREIGN KEY (CODIGO_DEPARTAMENTO) REFERENCES DEPARTAMENTO(CODIGO)
);

/*INSERTS DEPARTAMENTO*/

INSERT INTO DEPARTAMENTO
VALUES (1, 'Desarrollo', 120000);

INSERT INTO DEPARTAMENTO
VALUES (2, 'Sistemas', 150000);

INSERT INTO DEPARTAMENTO
VALUES (3, 'Recursos Humanos', 280000);

INSERT INTO DEPARTAMENTO
VALUES (4, 'Contabilidad', 110000);

INSERT INTO DEPARTAMENTO
VALUES (5, 'I+D', 375000);

INSERT INTO DEPARTAMENTO
VALUES (6, 'Proyectos', 0);

INSERT INTO DEPARTAMENTO
VALUES (7, 'Publicidad', 0);



/*INSERTS DE EMPLEADOS*/

INSERT INTO EMPLEADO
VALUES (1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);

INSERT INTO EMPLEADO
VALUES (2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);

INSERT INTO EMPLEADO
VALUES (3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);

INSERT INTO EMPLEADO
VALUES (4, '77705545E', 'Adrián', 'Suárez', NULL, 4);

INSERT INTO EMPLEADO
VALUES (5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);

INSERT INTO EMPLEADO
VALUES (6, '38382980M', 'María', 'Santana', 'Moreno', 1);

INSERT INTO EMPLEADO
VALUES (7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);

INSERT INTO EMPLEADO
VALUES (8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);

INSERT INTO EMPLEADO
VALUES (9, '56399183D', 'Juan', 'Gómez', 'López', 2);

INSERT INTO EMPLEADO
VALUES (10, '46384486H', 'Diego','Flores', 'Salas', 5);

INSERT INTO EMPLEADO
VALUES (11, '67389283A', 'Marta','Herrera', 'Gil', 1);

INSERT INTO EMPLEADO
VALUES (12, '41234836R', 'Irene','Salas', 'Flores', NULL);

INSERT INTO EMPLEADO
VALUES (13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);



--1 Inserta un nuevo departamento indicando
--su código, nombre y presupuesto.

INSERT INTO DEPARTAMENTO
VALUES (8,'Recursos Humanos',10000);

--2 Inserta un nuevo departamento indicando su nombre y presupuesto.

CREATE SEQUENCE SQN_DEPARTAMENTO
START WITH 9
INCREMENT BY 1;

INSERT INTO DEPARTAMENTO
VALUES (SQN_DEPARTAMENTO.NEXTVAL,'Limpieza',1000);

--3 Inserta un nuevo departamento indicando
--su código, nombre, presupuesto y gastos.

ALTER TABLE DEPARTAMENTO ADD GASTOS NUMBER(10,2);

INSERT INTO DEPARTAMENTO
VALUES (SQN_DEPARTAMENTO.NEXTVAL,'Seguridad',50000,25000);

SELECT * FROM DEPARTAMENTO;


--4 Inserta un nuevo empleado asociado a uno de los nuevos
--departamentos. La sentencia de inserción debe
--incluir: código, nif, nombre, apellido1, apellido2 y codigo_departamento.

INSERT INTO EMPLEADO 
VALUES (14,'47389854N','Antonio','Rodriguez','Gomez',10);

--5 Inserta un nuevo empleado asociado a uno de los nuevos
--departamentos. La sentencia de inserción debe
--incluir: nif, nombre, apellido1, apellido2 y codigo_departamento.

CREATE SEQUENCE SQN_EMPLEADO
START WITH 15
INCREMENT BY 1;

INSERT INTO EMPLEADO 
VALUES (SQN_EMPLEADO.NEXTVAL,'2343212M','Roberto','Sevillano','Ruda',4);


--6 Crea una nueva tabla con el nombre departamento_backup que tenga las
--mismas columnas que la tabla departamento. Una vez creada copia todos
--las filas de tabla departamento en departamento_backup.

CREATE TABLE DEPARTAMENTO_BACKUP AS
SELECT *
FROM DEPARTAMENTO;

--7 Elimina el departamento Proyectos. ¿Es posible eliminarlo? Si no fuese
--posible, ¿qué cambios debería realizar para que fuese posible borrarlo?

DELETE FROM  DEPARTAMENTO
WHERE NOMBRE LIKE 'Proyectos';


--8 Elimina el departamento Desarrollo. ¿Es posible eliminarlo? Si no fuese
--posible, ¿qué cambios debería realizar para que fuese posible borrarlo?

DELETE FROM DEPARTAMENTO 
WHERE NOMBRE LIKE 'Desarrollo';


/* No es posible borrar el departamento ya que tiene asociado empleados, deberiamos borrar antes los empleados asociados 
a dicho departamento y despues borrar el departamento */


--9 Actualiza el código del departamento Recursos Humanos y asígnale el valor
--30. ¿Es posible actualizarlo? Si no fuese posible, ¿qué cambios debería
--realizar para que fuese actualizarlo?


UPDATE DEPARTAMENTO 
SET CODIGO = 30
WHERE NOMBRE = 'Recursos Humanos';

/* No se puede actualizar el codigo del departamento ya que en ese departamento esta empleados con el codigo que queremos modificar,
primero debemos modificar el codigo en los empleados para poder corregirlos en la tabla departamento sin que nos de error*/


--10 .Actualiza el código del departamento Publicidad y asígnale el valor 40.
--¿Es posible actualizarlo? Si no fuese posible, ¿qué cambios debería
--realizar para que fuese actualizarlo?

UPDATE DEPARTAMENTO 
SET CODIGO = 40
WHERE NOMBRE = 'Publicidad';


--11 Actualiza el presupuesto de los departamentos sumándole 50000 € al
--valor del presupuesto actual, solamente a aquellos departamentos que
--tienen un presupuesto menor que 20000 €

UPDATE DEPARTAMENTO 
SET PRESUPUESTO = PRESUPUESTO + 50000
WHERE PRESUPUESTO < 20000;


--12 Realiza una transacción que elimine todas los empleados que no tienen
--un departamento asociado.

DELETE FROM EMPLEADO 
WHERE CODIGO_DEPARTAMENTO IS NULL ;








